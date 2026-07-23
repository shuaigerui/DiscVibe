import UIKit

enum DV_ScreenCaptureGuard {
    private static var started = false
    private static var protectedObjectIDs = Set<ObjectIdentifier>()

    static func start() {
        guard !started else { return }
        started = true

        let center = NotificationCenter.default
        center.addObserver(
            forName: UIWindow.didBecomeVisibleNotification,
            object: nil,
            queue: .main
        ) { notification in
            guard let window = notification.object as? UIWindow else { return }
            protectExternalWindowIfNeeded(window)
        }

        center.addObserver(
            forName: UIResponder.keyboardWillShowNotification,
            object: nil,
            queue: .main
        ) { _ in
            protectVisibleExternalWindows()
        }

        center.addObserver(
            forName: UIResponder.keyboardDidShowNotification,
            object: nil,
            queue: .main
        ) { _ in
            protectVisibleExternalWindows()
        }

        protectVisibleExternalWindows()
    }

    private static func protectVisibleExternalWindows() {
        for scene in UIApplication.shared.connectedScenes {
            guard let windowScene = scene as? UIWindowScene else { continue }
            for window in windowScene.windows {
                protectExternalWindowIfNeeded(window)
            }
        }
    }

    private static func protectExternalWindowIfNeeded(_ window: UIWindow) {
        // Main / Kiki content windows already use DV_SecureWindow.
        if window is DV_SecureWindow { return }
        guard shouldProtect(window) else { return }

        let id = ObjectIdentifier(window)
        guard !protectedObjectIDs.contains(id) else { return }
        protectedObjectIDs.insert(id)

        applyLayerProtection(to: window)
    }

    private static func shouldProtect(_ window: UIWindow) -> Bool {
        let name = NSStringFromClass(type(of: window))
        if name.contains("Keyboard") ||
            name.contains("TextEffects") ||
            name.contains("Input") ||
            name.contains("RemoteKeyboard") {
            return true
        }

        // IQKeyboardManager / system accessory often live above the normal window level.
        return window.windowLevel > .normal
    }

    /// Protect system keyboard / effects windows. Do not use this on DV_SecureWindow.
    private static func applyLayerProtection(to window: UIWindow) {
        let field = DV_SecureCaptureField()
        field.isSecureTextEntry = true
        field.isUserInteractionEnabled = false
        field.backgroundColor = .clear
        field.borderStyle = .none
        // Keep default non-zero intrinsic size; do NOT pin to 0x0 (that breaks layout).
        window.addSubview(field)
        field.frame = CGRect(x: -1, y: -1, width: 1, height: 1)

        DispatchQueue.main.async {
            guard let superlayer = window.layer.superlayer,
                  let secureLayer = field.layer.sublayers?.last else { return }
            superlayer.addSublayer(field.layer)
            secureLayer.addSublayer(window.layer)
        }
    }
}

/// Window that hosts all content inside a secure text-field canvas.
/// Screenshots / screen recordings show a blank screen without breaking Auto Layout.
final class DV_SecureWindow: UIWindow {
    private let secureRoot = DV_SecureRootViewController()

    override init(frame: CGRect) {
        super.init(frame: frame)
        super.rootViewController = secureRoot
        DV_ScreenCaptureGuard.start()
    }

    @available(iOS 13.0, *)
    override init(windowScene: UIWindowScene) {
        super.init(windowScene: windowScene)
        super.rootViewController = secureRoot
        DV_ScreenCaptureGuard.start()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override var rootViewController: UIViewController? {
        get { secureRoot.contentViewController }
        set { secureRoot.setContent(newValue) }
    }
}

private final class DV_SecureRootViewController: UIViewController {
    private let secureContainer = DV_SecureContainerView()
    private(set) var contentViewController: UIViewController?

    override func loadView() {
        view = secureContainer
    }

    func setContent(_ viewController: UIViewController?) {
        if contentViewController === viewController { return }

        if let current = contentViewController {
            current.willMove(toParent: nil)
            current.view.removeFromSuperview()
            current.removeFromParent()
        }

        contentViewController = viewController
        guard let viewController else { return }

        addChild(viewController)
        secureContainer.contentView.addSubview(viewController.view)
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewController.view.leadingAnchor.constraint(equalTo: secureContainer.contentView.leadingAnchor),
            viewController.view.trailingAnchor.constraint(equalTo: secureContainer.contentView.trailingAnchor),
            viewController.view.topAnchor.constraint(equalTo: secureContainer.contentView.topAnchor),
            viewController.view.bottomAnchor.constraint(equalTo: secureContainer.contentView.bottomAnchor)
        ])
        viewController.didMove(toParent: self)
    }
}

private final class DV_SecureContainerView: UIView {
    let contentView = UIView()
    private let secureField = DV_SecureCaptureField()
    private var didInstallSecureCanvas = false

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        backgroundColor = .black
        contentView.backgroundColor = .clear

        secureField.isSecureTextEntry = true
        secureField.isUserInteractionEnabled = true
        secureField.backgroundColor = .clear
        secureField.textColor = .clear
        secureField.tintColor = .clear
        secureField.borderStyle = .none
        secureField.clipsToBounds = true

        addSubview(secureField)
        pin(secureField, to: self)

        // Temporary host so layout stays correct before the secure canvas is ready.
        addSubview(contentView)
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

    override func didMoveToWindow() {
        super.didMoveToWindow()
        guard window != nil else { return }
        installSecureCanvasIfNeeded()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        if !didInstallSecureCanvas {
            contentView.frame = bounds
        }
        installSecureCanvasIfNeeded()
    }

    private func installSecureCanvasIfNeeded() {
        guard !didInstallSecureCanvas else { return }
        layoutIfNeeded()
        secureField.layoutIfNeeded()

        guard let canvas = findSecureCanvas(in: secureField) else { return }

        didInstallSecureCanvas = true
        canvas.backgroundColor = .clear
        canvas.isUserInteractionEnabled = true
        canvas.clipsToBounds = true

        contentView.removeFromSuperview()
        contentView.autoresizingMask = []
        canvas.addSubview(contentView)
        pin(contentView, to: canvas)
        setNeedsLayout()
    }

    private func findSecureCanvas(in view: UIView) -> UIView? {
        for subview in view.subviews {
            let name = NSStringFromClass(type(of: subview))
            if name.contains("CanvasView") ||
                name.contains("LayoutCanvasView") ||
                name.contains("TextLayoutCanvasView") {
                return subview
            }
            if let found = findSecureCanvas(in: subview) {
                return found
            }
        }
        return nil
    }

    private func pin(_ child: UIView, to parent: UIView) {
        child.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            child.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
            child.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
            child.topAnchor.constraint(equalTo: parent.topAnchor),
            child.bottomAnchor.constraint(equalTo: parent.bottomAnchor)
        ])
    }
}

private final class DV_SecureCaptureField: UITextField {
    override var canBecomeFirstResponder: Bool { false }

    override func caretRect(for position: UITextPosition) -> CGRect { .zero }

    override func selectionRects(for range: UITextRange) -> [UITextSelectionRect] { [] }
}
