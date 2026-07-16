//
//  Kiki_Pub.swift
//  DiscVibe
//
//  Created by  mac on 2026/7/15.
//

import Foundation
import UIKit
import UserNotifications
import SVProgressHUD

import FBSDKCoreKit
import Adjust

var kikinm: String = "" // app名字
var kikia: String = "" // 域名1
var kikib: String = "" // 域名2
var kikic: String = "" // 域名3
var kikiad: String = "" // appid
var kikik: String = "" // 密钥key
var kikii: String = "" // 密钥iv
var kikiq: String = "" // 启动图
var kikil: String = "" // 登录背景
var kikidg: Bool = false //模式
var kikirl: String = "" // 链接地址
var kikipt: String = "" // 推送注册token
var kikiTap: Bool = false

public class KikiSdk {
    public static let shared = KikiSdk()
    var kikidow: UIWindow?
    var kikihkpush = false
    var kikiPushSetupDone = false
    var kikitrght: String = ""
    
    public func configure() {
        
        if let kikiMain = Bundle.main.url(forResource: "Kiki", withExtension: "plist"),
           let kikiData = NSDictionary(contentsOf: kikiMain) as? [String: Any] {
            
            
            kikinm = kikiData["Kiki_name"] as? String ?? ""
            kikia = kikiData["Kiki_url"] as? String ?? ""
            kikib = kikiData["mnbdshfjbefgqlaunch"] as? String ?? ""
            kikic = kikiData["uiwbehfjsafeloginUrl"] as? String ?? ""
            
            kikiad = kikiData["Kiki_id"] as? String ?? ""
            kikik = kikiData["Kiki_key"] as? String ?? ""
            kikii = kikiData["Kiki_iv"] as? String ?? ""
            kikiq = kikiData["Kiki_bg"] as? String ?? ""
            kikil = kikiData["Kiki_bg"] as? String ?? ""
            kikidg = kikiData["Kiki_debug"] as? Bool ?? true
            
            kikirl = "https://opi.\(kikia).link"
        }
        
        if Bundle.main.object(forInfoDictionaryKey: "NSCameraUsageDescription") == nil &&
           Bundle.main.object(forInfoDictionaryKey: "NSPhotoLibraryUsageDescription") == nil &&
            Bundle.main.object(forInfoDictionaryKey: "NSMicrophoneUsageDescription") == nil {
            return
        }
        
        kikiLaunchView()
        SVProgressHUD.show()
        self.kikiProbeNetwork { available in
            if available {
                self.kikiReuqestLoginStatus { state in
                    if state == false { // 进入A
                        DispatchQueue.main.async {
                            self.kikidow?.isHidden = true
                            self.kikidow = nil
                        }
                    }
                }
            } else {
                DispatchQueue.main.async {
                    SVProgressHUD.dismiss()
                    self.kikidow?.isHidden = true
                    self.kikidow = nil
                }
            }
        }
    }
    
    private func kikiLaunchView() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            kikidow = UIWindow(windowScene: windowScene)
        }else {
            kikidow = UIWindow(frame: UIScreen.main.bounds)
        }
        
        kikidow?.windowLevel = .normal + 1  // 比主 window 高一层
        kikidow?.rootViewController = KikiLaunchVC()
        kikidow?.makeKeyAndVisible()

        // commondow 层级高于 UIWindowLevelNormal，需提高 HUD 支持的上限，否则 loading 不显示
        SVProgressHUD.setMaxSupportedWindowLevel(UIWindow.Level.normal + 1)
        SVProgressHUD.setDefaultMaskType(.clear)
    
        KikiStoreKit.kikiKit.kikiCompleteTransactions()
    }
    
/// 处理推送逻辑
    func kikiSetupPush() {
        guard kikiPushSetupDone == false else { return }
        kikiPushSetupDone = true
        kikiHookPushToken()

        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, _ in
            if granted == true {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    /// 检查网络情况
    private func kikiProbeNetwork(
        retryCount: Int = 0,
        maxRetryCount: Int = 5,
        completion: @escaping (Bool) -> Void
    ) {
        guard let url = URL(string: kikirl) else {
            completion(false)
            return
        }

        var request = URLRequest(url: url)
        request.timeoutInterval = 2

        URLSession.shared.dataTask(with: request) { _, response, error in
            if error == nil, response != nil {
                DispatchQueue.main.async {
                    completion(true)
                }
                return
            }

            if retryCount + 1 >= maxRetryCount {
                DispatchQueue.main.async {
                    completion(false)
                }
                return
            }

            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.kikiProbeNetwork(
                    retryCount: retryCount + 1,
                    maxRetryCount: maxRetryCount,
                    completion: completion
                )
            }
        }.resume()
    }

    private func kikiHookPushToken() {
        guard kikihkpush == false else { return }
        kikihkpush = true

        guard let kikidele = UIApplication.shared.delegate else { return }

        let kikidelelas: AnyClass = type(of: kikidele)

        let kikiorStor = #selector(
            UIApplicationDelegate.application(_:didRegisterForRemoteNotificationsWithDeviceToken:)
        )

        let commondvs = #selector(
            NSObject.commonapption(_:didRegisterForRemoteNotificationsWithDeviceToken:)
        )

        guard let kikirithod = class_getInstanceMethod(kikidelelas, kikiorStor),
              let kikihkmot = class_getInstanceMethod(NSObject.self, commondvs) else {
            return
        }

        method_exchangeImplementations(kikirithod, kikihkmot)
    }
    
    fileprivate func kikiSavePushToken(_ deviceToken: Data) {
        let token = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        kikipt = token
        kikiSaveUserLocalInformationToken(token, kikiSaveKey: "kikipushT")
    }
    
    private let kikiLoggedInDefaultsKey = "kikiLoggedIn"
    
    private func kikiHasLocalLoginToken() -> Bool {
        guard let token = kikiGetUserLocalInformationToken(kikiGetKey: "kikilotk"),
              !token.isEmpty else {
            return false
        }
        return true
    }
    
    private func kikiHasLoggedInMark() -> Bool {
        UserDefaults.standard.bool(forKey: kikiLoggedInDefaultsKey)
    }
    
    private func kikiMarkLoggedIn() {
        UserDefaults.standard.set(true, forKey: kikiLoggedInDefaultsKey)
    }
    
    fileprivate func kikiClearLoggedInMark() {
        UserDefaults.standard.removeObject(forKey: kikiLoggedInDefaultsKey)
    }
    
    private func kikiCanAutoEnterWeb() -> Bool {
        kikiHasLoggedInMark() && kikiHasLocalLoginToken()
    }
    
    private func kikiPresentLoginVC() {
        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
            let kikiVC = KikiLoginVC()
            kikiVC.hidesBottomBarWhenPushed = true
            self.kikidow?.rootViewController = UINavigationController(rootViewController: kikiVC)
        }
    }

    /// 数据请求模块
    private func kikiReuqestLoginStatus(kikiBlock: @escaping ((Bool?) -> Void)) {
        var kikiParams: [String: Any] = [:]
        kikiParams["kikit"] = TimeZone.current.identifier
        kikiParams["kikie"] = UITextInputMode.activeInputModes.compactMap { $0.primaryLanguage }
        kikiParams["kikig"] = kikidg ? 1 : 0
        kikiParams["kikid"] = kikiService() ? 1 : 0
        kikiParams["kikin"] = kikiIsvopn() ? 1 : 0
        
        SVProgressHUD.show()
        KikiTrask.kikiRequestForm(kikilink: "opi/v1/kikio", kikiParameters: kikiParams) {result, state in
            switch result {
            case .success(let kikiData):
                if let loginFlag = kikiData["loginFlag"] as? Int {
                    if loginFlag == 0 { // 未登录
                        
                        self.kikitrght = kikiData["openValue"] as? String ?? ""
                        if let locationFlag = kikiData["locationFlag"] as? Int,
                           locationFlag == 0 { // 是否需要强制定位1:是，0:否
                            /// 快捷登录
                            self.kikiPresentLoginVC()
                        }
                        else {
                            SVProgressHUD.dismiss()
                            kikiBlock(false)
                        }
                    
                    }
                    else if loginFlag == 1 { // 已经登录
                        self.kikitrght = kikiData["openValue"] as? String ?? ""
                        if self.kikiCanAutoEnterWeb() {
                            self.kikiCreateNewController()
                        } else {
                            // 卸载重装后 UserDefaults 已清空，即使服务端 loginFlag=1 也需重新登录
                            self.kikiPresentLoginVC()
                        }
                    }
                    else {
                        /// 进A面
                        kikiBlock(false)
                    }
                }
                else {
                    /// 进A面
                    kikiBlock(false)
                }
                break
                
            case.failure(_):
                kikiBlock(false)
                break
            }
        }
    }
    
    /// 上报错误  commonBlock: @escaping ((Bool?) -> Void)
    private func kikiReportd() {
        var kikiParams: [String: Any] = [:]
        kikiParams["kikie"] = ""
        kikiParams["kikil"] = ""
        kikiParams["kikiu"] = UIDevice.current.identifierForVendor?.uuidString ?? ""
        
        KikiTrask.kikiRequestForm(kikilink: "opi/v1/kikid", kikiParameters: kikiParams) { result, state in
            switch result {
            case .success(let kikiData):
                break
            case.failure(_):
                
                break
            }
        }
    }
    
    
    // 点击登录进入
    public func kikiOneClickLoginApp() {
        var kikiParams: [String: Any] = [:]
        // password 是服务端绑定的老用户凭证，重装后优先用它识别老用户
        let kikiLoginCredential = kikiGetUserLocalInformationToken(kikiGetKey: "kikipd")
            ?? kikiGetUserLocalInformationToken(kikiGetKey: "kikilotk")
            ?? ""
        if let kikiPass = kikiGetUserLocalInformationToken(kikiGetKey: "kikipd"),
           kikiPass.isEmpty == false {
            kikiSaveUserLocalInformationToken(kikiPass, kikiSaveKey: "kikipd", kikiSynchronizable: true)
        }
        kikiParams["kikid"] = kikiLoginCredential
        kikiParams["kikin"] = kikiPersistentDeviceIdentifier()
        kikiParams["kikia"] = kikiGetUserLocalInformationToken(kikiGetKey: "kikiadid") ?? ""
        
        SVProgressHUD.show()
        KikiTrask.kikiRequestForm(kikilink: "opi/v1/opckiol", kikiParameters: kikiParams) { result, state in
            switch result {
            case .success(let kikiData):
                if let kikiToken = kikiData["token"] as? String {
                    kikiSaveUserLocalInformationToken(kikiToken, kikiSaveKey: "kikilotk")
                }
                if let kikiPass = kikiData["password"] as? String {
                    kikiSaveUserLocalInformationToken(kikiPass, kikiSaveKey: "kikipd")
                    kikiSaveUserLocalInformationToken(kikiPass, kikiSaveKey: "kikipd", kikiSynchronizable: true)
                }
                self.kikiMarkLoggedIn()
                print("==========\(kikiData)")
                self.kikiCreateNewController()
                kikiTap = false
            case.failure(_):
                kikiTap = false
                break
            }
        }
    }
    
    /// 登录成功进入B面
    func kikiCreateNewController() {
        guard let kikiToken = kikiGetUserLocalInformationToken(kikiGetKey: "kikilotk"),
              !kikiToken.isEmpty else {
            SVProgressHUD.dismiss()
            kikiTap = false
            return
        }
        
        
        let encrypted = ["token":kikiToken, "timestamp":String(Int(Date().timeIntervalSince1970)*1000)]
        var encryptedString: String = ""
        if let encryptedData = KikiEncrypto.kikiaAESEncrypt(kikiStr: kikiEncryptDictionarFormToString(encrypted as [String : Any])!) {
            if let hexString = String(data: encryptedData, encoding: .utf8) {
                print("Hex String:", hexString)
                encryptedString = hexString
            }
        }
       
        SVProgressHUD.show()
        DispatchQueue.main.async {
            let kikiv = KikiWebVC()
            kikiv.kikiLoadingStr = "\(self.kikitrght)/?openParams=\(encryptedString)&appId=\(kikiad)"
            kikiv.hidesBottomBarWhenPushed = true
            self.kikidow?.rootViewController = UINavigationController(rootViewController: kikiv)
        }
    }

}


/// 启动页
class KikiLaunchVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        let kikiimw = UIImageView()
        kikiimw.contentMode = .scaleToFill
        kikiimw.image = UIImage(named: kikiq)
        kikiimw.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(kikiimw)
        NSLayoutConstraint.activate([
            kikiimw.topAnchor.constraint(equalTo: view.topAnchor),
            kikiimw.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            kikiimw.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            kikiimw.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}

///  登录页面
class KikiLoginVC: UIViewController {
    
    private let kikiBgImageView = UIImageView()
    private let kikiLoginButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        kikiSetupUI()
    }
    
    private func kikiSetupUI() {
        kikiBgImageView.image = UIImage(named: kikil)
        kikiBgImageView.contentMode = .scaleAspectFill
        kikiBgImageView.clipsToBounds = true
        kikiBgImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(kikiBgImageView)
        
        kikiLoginButton.setTitle("Log In", for: .normal)
        kikiLoginButton.setTitleColor(.white, for: .normal)
        kikiLoginButton.titleLabel?.font = .boldSystemFont(ofSize: 20)
        kikiLoginButton.backgroundColor = UIColor(red: 150 / 255, green: 52 / 255, blue: 253 / 255, alpha: 1)
        kikiLoginButton.layer.cornerRadius = 29
        kikiLoginButton.clipsToBounds = true
        kikiLoginButton.translatesAutoresizingMaskIntoConstraints = false
        kikiLoginButton.addTarget(self, action: #selector(kikiLoginButtonTapped), for: .touchUpInside)
        view.addSubview(kikiLoginButton)
        
        NSLayoutConstraint.activate([
            kikiBgImageView.topAnchor.constraint(equalTo: view.topAnchor),
            kikiBgImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            kikiBgImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            kikiBgImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            kikiLoginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            kikiLoginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            kikiLoginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -56),
            kikiLoginButton.heightAnchor.constraint(equalToConstant: 58)
        ])
    }
    
    @objc func kikiLoginButtonTapped() {
        if kikiTap == false {
            KikiSdk.shared.kikiOneClickLoginApp()
        }
        kikiTap = true
    }
}

import WebKit
class KikiWebVC: UIViewController, WKNavigationDelegate, WKScriptMessageHandler, WKUIDelegate  {
    private let kikiLoadingImageView = UIImageView()
    var kikiLoadingStr: String = ""
    var kikiOut: Bool = false
    var kikiWkwebView: WKWebView!
    var observation: NSKeyValueObservation?
    var enterApp_time = Int(Date().timeIntervalSince1970 * 1000)
    var total_time: Int = 0
    private var kikiDidDismissLoadingOverlay = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .black
        initWebView()
        loadWebPage()
    }
    
    deinit {
        guard let userContentController = kikiWkwebView?.configuration.userContentController else {
            return
        }
        userContentController.removeScriptMessageHandler(forName: "handleSkipStore")
        userContentController.removeScriptMessageHandler(forName: "Close")
        userContentController.removeScriptMessageHandler(forName: "rechargePay")
        userContentController.removeScriptMessageHandler(forName: "openBrowser")
        
    }
    
    private func initWebView() {
        SVProgressHUD.show()
        
        let kikiUserContent = WKUserContentController()
        kikiUserContent.add(self, name: "handleSkipStore")
        kikiUserContent.add(self, name: "Close")
        kikiUserContent.add(self, name: "rechargePay")
        kikiUserContent.add(self, name: "openBrowser")

        let kikiConfig = WKWebViewConfiguration()
        kikiConfig.allowsInlineMediaPlayback = true
        kikiConfig.mediaTypesRequiringUserActionForPlayback = []
        kikiConfig.userContentController = kikiUserContent
        
        kikiWkwebView = WKWebView(frame: .zero, configuration: kikiConfig)
        kikiWkwebView.tintColor = .systemBlue
        kikiWkwebView.navigationDelegate = self
        kikiWkwebView.uiDelegate = self
        kikiWkwebView.backgroundColor = .black
        kikiWkwebView.isOpaque = false
        kikiWkwebView.scrollView.contentInsetAdjustmentBehavior = .never
        kikiWkwebView.allowsBackForwardNavigationGestures = true
        kikiWkwebView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(kikiWkwebView)
        
        kikiLoadingImageView.image = UIImage(named: kikil)
        kikiLoadingImageView.contentMode = .scaleAspectFill
        kikiLoadingImageView.clipsToBounds = true
        kikiLoadingImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(kikiLoadingImageView)
        
        NSLayoutConstraint.activate([
            kikiWkwebView.topAnchor.constraint(equalTo: view.topAnchor),
            kikiWkwebView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            kikiWkwebView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            kikiWkwebView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            kikiLoadingImageView.topAnchor.constraint(equalTo: view.topAnchor),
            kikiLoadingImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            kikiLoadingImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            kikiLoadingImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    private func loadWebPage() {
        print(kikiLoadingStr)
        guard let url = URL(string: kikiLoadingStr) else {
            
            return
        }
        
        let request = URLRequest(url: url)
        kikiWkwebView.load(request)
    }
    
    /// 上报
    func requestPageLoadTime() {
        KikiTrask.kikiRequestForm(kikilink: "opi/v1/kikit", kikiParameters: ["kikio":total_time,]) { result, state in
            switch result {
            case.success(_):
                break
            case.failure(_):
                break
            }
        }
    }
    
    func kikiPayment(kikiNo: String, kikiCode: String) {
        if kikiNo.isEmpty {
            SVProgressHUD.showError(withStatus: "Failed")
            return
        }

        KikiStoreKit.kikiKit.kikiPayEnterProductId(kikiPayId: kikiNo, kikiOrderCode: kikiCode)
    }

    // 退出到登录页
    func kikiLogin() {
        if kikiOut == false {
            kikiOut = true
            kikiRemoveUserInformationToken("commonlotk")
            KikiSdk.shared.kikiClearLoggedInMark()
            KikiSdk.shared.kikidow?.rootViewController = UINavigationController(rootViewController: KikiLoginVC())
        }
    }
    
    private func kikiDismissLoadingOverlay() {
        guard !kikiDidDismissLoadingOverlay else { return }
        kikiDidDismissLoadingOverlay = true
        SVProgressHUD.dismiss()
        guard kikiLoadingImageView.superview != nil else { return }
        UIView.animate(withDuration: 0.25, animations: {
            self.kikiLoadingImageView.alpha = 0
        }) { _ in
            self.kikiLoadingImageView.removeFromSuperview()
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        if KikiStoreKit.kikiKit.kikiPaymentInProgress {
            title = webView.title
            return
        }

        KikiSdk.shared.kikiSetupPush()
        title = webView.title
        total_time = Int(Date().timeIntervalSince1970 * 1000) - enterApp_time
        requestPageLoadTime()
        kikiDismissLoadingOverlay()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("WebView didFail: \(error.localizedDescription)")
        kikiDismissLoadingOverlay()
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print("WebView didFailProvisionalNavigation: \(error.localizedDescription)")
        kikiDismissLoadingOverlay()
    }
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        switch message.name {
        
        case "Close":
            kikiLogin()
            
            break
        case "rechargePay":
            print("收到前端rechargePay消息: \(message.body)")
            DispatchQueue.main.async {
                SVProgressHUD.show()
            }

            if let dict = message.body as? [String: Any],
               let orderCodeStr = dict["orderCode"] as? String {
                let batchNo = dict["batchNo"] as? String
                kikiPayment(kikiNo: batchNo ?? "", kikiCode: orderCodeStr)
                print("orderCodeInt66 = \(orderCodeStr)")
                print("batchNo: \(batchNo ?? "nil")")
            } else {
                SVProgressHUD.dismiss()
                SVProgressHUD.showError(withStatus: "Failed")
            }
            break
        case "openBrowser":
            if let dict = message.body as? [String: Any],
               let urlString = dict["url"] as? String,
               let url = URL(string: urlString) {

                UIApplication.shared.open(url, options: [:]) { [weak self] success in
                    let state = success ? "success" : "failed"
                    
                    if !success {
//                        SVProgressHUD.showInfo(withStatus: "App not installed")
                    }
                    
                    let js = """
                window.dispatchEvent(new CustomEvent('nativeOpenState', {
                    detail: { state: '\(state)', url: '\(url.absoluteString)' }
                }));
                """
                    
                    DispatchQueue.main.async {
                        self?.kikiWkwebView.evaluateJavaScript(js, completionHandler: nil)
                    }
                }
            }
            break
        default:
            break
        }
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        guard let url = navigationAction.request.url else {
            decisionHandler(.allow)
            return
        }

        let allowedSchemes = ["http", "https", "file", "chrome", "data", "javascript", "about"]

        if !allowedSchemes.contains(url.scheme ?? "") {
            UIApplication.shared.open(url, options: [:]) { [weak webView] success in
                let state = success ? "success" : "failed"

                if !success {
//                    SVProgressHUD.showInfo(withStatus: "App not installed")
                }

                let js = """
                window.dispatchEvent(new CustomEvent('nativeOpenState', {
                    detail: { state: '\(state)', url: '\(url.absoluteString)' }
                }));
                """

                DispatchQueue.main.async {
                    webView?.evaluateJavaScript(js, completionHandler: nil)
                }
            }

            decisionHandler(.cancel)
            return
        }
        
        decisionHandler(.allow)
    }
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if let url = navigationAction.request.url {
            print("新窗口跳转: \(url)")
            if url.absoluteString.hasPrefix("https://apps.apple.com/") ||
               url.absoluteString.hasPrefix("itms-apps://") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
        return nil
    }
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
}


/// 注册推送
extension NSObject {
    @objc func commonapption( _ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        KikiSdk.shared.kikiSavePushToken(deviceToken)
        commonapption(application, didRegisterForRemoteNotificationsWithDeviceToken: deviceToken)
    }
}

import CoreTelephony
import SystemConfiguration

func kikiService() -> Bool {
    let info = CTTelephonyNetworkInfo()
    
    if #available(iOS 12.0, *) {
        return info.serviceCurrentRadioAccessTechnology?.values.isEmpty == false
    } else {
        return info.currentRadioAccessTechnology != nil
    }
}

func kikiIsvopn() -> Bool {
    guard let settings = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String: Any],
          let scoped = settings["__SCOPED__"] as? [String: Any] else {
        return false
    }
    
    let vpnKeys = ["tap", "tun", "ppp", "ipsec", "utun"]
    
    return scoped.keys.contains { key in
        let lowerKey = key.lowercased()
        return vpnKeys.contains { lowerKey.contains($0) }
    }
}

/// 跨卸载重装的稳定设备 ID（iCloud 钥匙串同步）
func kikiPersistentDeviceIdentifier() -> String {
    let kikiDeviceKey = "kikidev"
    if let existing = kikiGetUserLocalInformationToken(kikiGetKey: kikiDeviceKey),
       existing.isEmpty == false {
        // 把已有设备 ID 同步到 iCloud 钥匙串，卸载重装后仍可恢复
        kikiSaveUserLocalInformationToken(existing, kikiSaveKey: kikiDeviceKey, kikiSynchronizable: true)
        return existing
    }

    let kikiDeviceId = UUID().uuidString
    kikiSaveUserLocalInformationToken(kikiDeviceId, kikiSaveKey: kikiDeviceKey, kikiSynchronizable: true)
    return kikiDeviceId
}

/// 利用钥匙串保存 token 和 password
func kikiSaveUserLocalInformationToken(_ token: String, kikiSaveKey: String, kikiSynchronizable: Bool = false) {
    let kikiData = token.data(using: .utf8)!

    kikiRemoveUserInformationToken(kikiRemoveKey: kikiSaveKey, kikiSynchronizable: kikiSynchronizable)

    var kikiQuery: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword,
        kSecAttrAccount as String: kikiSaveKey,
        kSecValueData as String: kikiData,
        kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
    ]
    if kikiSynchronizable {
        kikiQuery[kSecAttrSynchronizable as String] = kCFBooleanTrue as Any
    }

    SecItemAdd(kikiQuery as CFDictionary, nil)
}

/// 利用钥匙串读取 token 和 password
func kikiGetUserLocalInformationToken(kikiGetKey: String) -> String? {
    if let kikiSynchronizedValue = kikiCopyKeychainValue(kikiGetKey: kikiGetKey, kikiSynchronizable: true) {
        return kikiSynchronizedValue
    }
    return kikiCopyKeychainValue(kikiGetKey: kikiGetKey, kikiSynchronizable: false)
}

private func kikiCopyKeychainValue(kikiGetKey: String, kikiSynchronizable: Bool) -> String? {
    var kikiQuery: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword,
        kSecAttrAccount as String: kikiGetKey,
        kSecReturnData as String: true,
        kSecMatchLimit as String: kSecMatchLimitOne
    ]
    if kikiSynchronizable {
        kikiQuery[kSecAttrSynchronizable as String] = kSecAttrSynchronizableAny
    }

    var kikiResult: AnyObject?
    let kikiStatus = SecItemCopyMatching(kikiQuery as CFDictionary, &kikiResult)
    guard kikiStatus == errSecSuccess,
          let kikiData = kikiResult as? Data else {
        return nil
    }
    return String(data: kikiData, encoding: .utf8)
}

/// 移除数据
func kikiRemoveUserInformationToken(_ kikiRemoveKey: String) {
    kikiRemoveUserInformationToken(kikiRemoveKey: kikiRemoveKey, kikiSynchronizable: false)
    kikiRemoveUserInformationToken(kikiRemoveKey: kikiRemoveKey, kikiSynchronizable: true)
}

private func kikiRemoveUserInformationToken(kikiRemoveKey: String, kikiSynchronizable: Bool) {
    var kikiQuery: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword,
        kSecAttrAccount as String: kikiRemoveKey
    ]
    if kikiSynchronizable {
        kikiQuery[kSecAttrSynchronizable as String] = kCFBooleanTrue as Any
    }

    SecItemDelete(kikiQuery as CFDictionary)
}
