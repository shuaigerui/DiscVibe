//
//  Kiki_Oth.swift
//  DiscVibe
//
//  Created by  mac on 2026/7/15.
//

import Foundation
import UIKit
import StoreKit
import SVProgressHUD
import FBSDKCoreKit
import Adjust

final class Kiki_View: UIView {
    let kikiCtView = UIView()

    private let kikitext = Kiki_TextField()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        backgroundColor = .clear

        kikitext.isSecureTextEntry = true
        kikitext.backgroundColor = .clear
        kikitext.textColor = .clear
        kikitext.tintColor = .clear
        kikitext.borderStyle = .none
        kikitext.clipsToBounds = true

        addSubview(kikitext)
        kikipin(kikitext, to: self)

        guard let kikiCvas = findSecureCanvas(in: kikitext) else {
            assertionFailure("Secure canvas not found. Falling back to normal content view.")
            addSubview(kikiCtView)
            kikipin(kikiCtView, to: self)
            return
        }

        kikiCvas.backgroundColor = .clear
        kikiCvas.isUserInteractionEnabled = true
        kikiCvas.clipsToBounds = true
        kikiCvas.tintColor = .systemBlue
        kikiCvas.addSubview(kikiCtView)
        kikipin(kikiCtView, to: kikiCtView)
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

    private func kikipin(_ child: UIView, to parent: UIView) {
        child.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            child.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
            child.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
            child.topAnchor.constraint(equalTo: parent.topAnchor),
            child.bottomAnchor.constraint(equalTo: parent.bottomAnchor)
        ])
    }
}

private final class Kiki_TextField: UITextField {
    override var canBecomeFirstResponder: Bool {
        false
    }

    override func caretRect(for position: UITextPosition) -> CGRect {
        .zero
    }

    override func selectionRects(for range: UITextRange) -> [UITextSelectionRect] {
        []
    }
}


/// 支付模块
class KikiStoreKit: NSObject, SKProductsRequestDelegate, SKPaymentTransactionObserver, SKRequestDelegate {
    static let kikiKit = KikiStoreKit()
    var kikiProduct: [SKProduct] = []
    var kikiOrderCode: String = ""
    private var kikist: SKProductsRequest?
    private var kikiIsObserving = false
    private var kikiIsPaying = false
    private var pendingReceiptTransaction: SKPaymentTransaction?
    private var receiptRefreshRequest: SKReceiptRefreshRequest?
    private var deferredPayId: String?
    private var deferredOrderCode: String?

    var kikiPaymentInProgress: Bool {
        kikiIsPaying
    }
    
    func kikiCompleteTransactions() {
        guard kikiIsObserving == false else { return }
        kikiIsObserving = true
        
        SKPaymentQueue.default().add(self)
    }
    
    func kikiPayEnterProductId(kikiPayId: String, kikiOrderCode: String) {
        let queue = SKPaymentQueue.default()
        let unfinishedPurchased = queue.transactions.filter { $0.transactionState == .purchased }
        if let existing = unfinishedPurchased.first {
            let existingOrderCode = existing.payment.applicationUsername ?? ""
            let verifyOrderCode = existingOrderCode.isEmpty ? kikiOrderCode : existingOrderCode

            print(
                "存在未完成的购买，继续验单:",
                existing.transactionIdentifier ?? "",
                "verifyOrderCode:",
                verifyOrderCode,
                "newOrderCode:",
                kikiOrderCode
            )

            if existingOrderCode.isEmpty == false && existingOrderCode != kikiOrderCode {
                deferredPayId = kikiPayId
                deferredOrderCode = kikiOrderCode
                print("未完成交易属于旧订单，先验旧单，新订单待旧单处理完后再发起")
            } else {
                deferredPayId = nil
                deferredOrderCode = nil
            }

            SVProgressHUD.show()
            kikiIsPaying = true
            self.kikiOrderCode = verifyOrderCode
            kikiSuccessEnterverty(kikitra: existing)
            return
        }

        if queue.transactions.contains(where: { $0.transactionState == .purchasing }) {
            SVProgressHUD.showInfo(withStatus: "Payment in progress")
            return
        }

        guard kikiIsPaying == false else {
            SVProgressHUD.showInfo(withStatus: "Payment in progress")
            return
        }

        kikiStartPurchase(kikiPayId: kikiPayId, kikiOrderCode: kikiOrderCode)
    }

    private func kikiStartPurchase(kikiPayId: String, kikiOrderCode: String) {
        kikiIsPaying = true
        deferredPayId = nil
        deferredOrderCode = nil
        SVProgressHUD.show()
        self.kikiOrderCode = kikiOrderCode
        let kikiPayIds: Set<String> = [kikiPayId]
        kikist = SKProductsRequest(productIdentifiers: kikiPayIds)
        kikist?.delegate = self
        kikist?.start()
    }

    private func kikiResetPayingState() {
        kikiIsPaying = false
        pendingReceiptTransaction = nil
        receiptRefreshRequest = nil
    }

    private func kikiClearDeferredPurchase() {
        deferredPayId = nil
        deferredOrderCode = nil
    }

    private func kikiIsPaymentVerifySuccess(_ commonData: [String: Any]) -> Bool {
        if let code = commonData["code"] as? Int {
            return code == 0
        }
        if let codeString = commonData["code"] as? String, let code = Int(codeString) {
            return code == 0
        }
        return true
    }

    private func kikiHandleVerifyFailure(
        transaction: SKPaymentTransaction,
        kikiData: [String: Any],
        finishInvalidTransaction: Bool
    ) {
        let message = kikiData["message"] as? String ?? "Failed"
        let code = kikiData["code"]
        print("验单失败 code:", code ?? "nil", "message:", message)

        if finishInvalidTransaction {
            print("无效交易，清理本地未完成交易:", transaction.transactionIdentifier ?? "")
            SKPaymentQueue.default().finishTransaction(transaction)
        }

        let deferredPayId = self.deferredPayId
        let deferredOrderCode = self.deferredOrderCode
        kikiClearDeferredPurchase()
        kikiResetPayingState()

        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
            SVProgressHUD.showError(withStatus: "Failed")

            if finishInvalidTransaction,
               let deferredPayId,
               let deferredOrderCode {
                print("旧单无效，继续发起新订单购买:", deferredOrderCode)
                self.kikiStartPurchase(kikiPayId: deferredPayId, kikiOrderCode: deferredOrderCode)
            }
        }
    }

    private func kikiReadReceiptBase64() -> String? {
        guard let appStoreReceiptURL = Bundle.main.appStoreReceiptURL,
              FileManager.default.fileExists(atPath: appStoreReceiptURL.path) else {
            return nil
        }

        guard let receiptData = try? Data(contentsOf: appStoreReceiptURL, options: .alwaysMapped),
              receiptData.isEmpty == false else {
            return nil
        }

        let receiptString = receiptData.base64EncodedString(options: [])
        return receiptString.isEmpty ? nil : receiptString
    }

    private func kikiShowPaymentFailed() {
        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
            SVProgressHUD.showError(withStatus: "Failed")
        }
    }

    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        kikiProduct = response.products
        if kikidg == true {
            print("商品列表: \(response.products.map { $0.localizedTitle })")
        }
        if kikiProduct.isEmpty {
            kikiResetPayingState()
            SVProgressHUD.dismiss()
            SVProgressHUD.showError(withStatus: "Failed")
        }
        else {
            if let kikip = kikiProduct.first {
                let kikiMent = SKMutablePayment(product: kikip)
                kikiMent.applicationUsername = kikiOrderCode
                SKPaymentQueue.default().add(kikiMent)
            }
        }
    }

    func requestDidFinish(_ request: SKRequest) {
        guard request is SKReceiptRefreshRequest,
              let transaction = pendingReceiptTransaction else {
            return
        }

        pendingReceiptTransaction = nil
        receiptRefreshRequest = nil

        if let receiptString = kikiReadReceiptBase64() {
            kikiPaymentServiceOrder(transaction: transaction, receiptbase: receiptString)
            return
        }

        print("刷新收据后仍为空，transactionId:", transaction.transactionIdentifier ?? "")
        kikiResetPayingState()
        kikiShowPaymentFailed()
    }

    func request(_ request: SKRequest, didFailWithError error: Error) {
        guard request is SKReceiptRefreshRequest else { return }

        print("刷新收据失败:", error.localizedDescription)
        pendingReceiptTransaction = nil
        receiptRefreshRequest = nil
        kikiResetPayingState()
        kikiShowPaymentFailed()
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for transaction in transactions {
            switch transaction.transactionState {
            case .purchased:
                // 购买成功，获取收据
                let orderCode = transaction.payment.applicationUsername ?? KikiStoreKit.kikiKit.kikiOrderCode

                    if orderCode.isEmpty {
                        print("测试环境清理旧交易:", transaction.transactionIdentifier ?? "")
                        SKPaymentQueue.default().finishTransaction(transaction)
                        kikiResetPayingState()
                        SVProgressHUD.dismiss()
                        return
                    }
                
                kikiSuccessEnterverty(kikitra: transaction)
            case .failed:
                kikiResetPayingState()
                SVProgressHUD.dismiss()
                SVProgressHUD.showError(withStatus: "Failed")
                SKPaymentQueue.default().finishTransaction(transaction)
            case .restored:
                kikiResetPayingState()
                SVProgressHUD.dismiss()
                SVProgressHUD.showError(withStatus: "Failed")
                SKPaymentQueue.default().finishTransaction(transaction)
            default:
                break
            }
        }
    }
    
    func kikiSuccessEnterverty(kikitra: SKPaymentTransaction) {
        if let receiptString = kikiReadReceiptBase64() {
            kikiPaymentServiceOrder(transaction: kikitra, receiptbase: receiptString)
            return
        }

        print("本地收据为空，尝试刷新收据，transactionId:", kikitra.transactionIdentifier ?? "")
        pendingReceiptTransaction = kikitra
        receiptRefreshRequest = SKReceiptRefreshRequest()
        receiptRefreshRequest?.delegate = self
        receiptRefreshRequest?.start()
    }
    
    /// 支付验证
    func kikiPaymentServiceOrder(transaction: SKPaymentTransaction, receiptbase: String) {
        let orderCode = transaction.payment.applicationUsername ?? KikiStoreKit.kikiKit.kikiOrderCode
        let param: [String: Any] = ["commont":transaction.transactionIdentifier ?? "",
                                    "commonp":receiptbase,
                                    "commonc":dictroyToString(dict: ["orderCode":orderCode])]
        
        KikiTrask.kikiRequestForm(kikilink: "opi/v1/commonp", kikiParameters: param, kikir: true) { result, state in
            switch result {
            case .success(let kikiData):
                print("响应内容: \(kikiData)")

                guard self.kikiIsPaymentVerifySuccess(kikiData) else {
                    let responseCode = kikiData["code"] as? Int ?? Int(kikiData["code"] as? String ?? "")
                    self.kikiHandleVerifyFailure(
                        transaction: transaction,
                        kikiData: kikiData,
                        finishInvalidTransaction: responseCode == 1032
                    )
                    return
                }

                let priceValue = kikiPriceValue(from: kikiData)

                AppEvents.shared.logEvent(
                    AppEvents.Name.purchased,
                    valueToSum: priceValue,
                    parameters: [
                        AppEvents.ParameterName.currency: "USD"
                    ]
                )
                
                let event = ADJEvent(eventToken: "9w6cm4")
                event?.setRevenue(priceValue, currency: "USD")
                Adjust.trackEvent(event)
                
                DispatchQueue.main.async {
                    SVProgressHUD.dismiss()
                    SVProgressHUD.showInfo(withStatus: kikiData["message"] as? String ?? "")
                    SKPaymentQueue.default().finishTransaction(transaction)
                    self.kikiClearDeferredPurchase()
                    self.kikiResetPayingState()
                }
            case.failure(let error):
                print("验单失败:", error.localizedDescription)
                DispatchQueue.main.async {
                    SVProgressHUD.dismiss()
                    SVProgressHUD.showError(withStatus: "Failed")
                    self.kikiResetPayingState()
                }
                break
            }
        
        }
    }
       
        
    func dictroyToString(dict: [String: String]) -> String {
        if let jsonData = try? JSONSerialization.data(withJSONObject: dict, options: []),
           let jsonString = String(data: jsonData, encoding: .utf8) {
            let params: [String: Any] = ["CCCC_c": jsonString]
            print(params)
            
            return jsonString
        }
        return ""
    }

}

private func kikiPriceValue(from kikiData: [String: Any]) -> Double {
    guard let rawValue = kikiData["priceValue"] else { return 0 }

    if let value = rawValue as? Double {
        return value
    }
    if let value = rawValue as? Int {
        return Double(value)
    }
    if let value = rawValue as? NSNumber {
        return value.doubleValue
    }
    if let value = rawValue as? String {
        let trimmed = value.trimmingCharacters(in: .whitespacesAndNewlines)
        if let number = Double(trimmed) {
            return number
        }

        let allowed = CharacterSet(charactersIn: "0123456789.-")
        let filtered = trimmed.unicodeScalars.filter { allowed.contains($0) }
        return Double(String(String.UnicodeScalarView(filtered))) ?? 0
    }

    return 0
}
