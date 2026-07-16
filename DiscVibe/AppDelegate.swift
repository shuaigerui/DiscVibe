
import Foundation

import UIKit
import IQKeyboardManager
import Toast_Swift
@_exported import SnapKit

import FBSDKCoreKit
import Adjust

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
var resultPhotosArr: [Any]?
var clear_padding: Float? = 0.0
private var canName: Bool? = false




    var window: UIWindow?


    private func initializeWindow() {
       var changeX: [String: Any]! = [String(cString: [117,116,102,108,101,110,0], encoding: .utf8)!:65, String(cString: [105,110,104,105,98,105,116,0], encoding: .utf8)!:16]
   withUnsafeMutablePointer(to: &changeX) { pointer in
    
   }
      changeX = ["\(changeX.count)": 1 * changeX.values.count]

        window = UIWindow(frame: UIScreen.main.bounds)
        DV_EventsEvents.shared.restoreLoginStateIfNeeded()

        let launchVC = DV_VideoMenuController()
        launchVC.completion = {
            if DV_EventsEvents.shared.isLoggedIn {
                self.window?.rootViewController = DV_RegisterReportController()
            } else {
                let welcomeNavigationController = UINavigationController(rootViewController: DV_ListController())
                welcomeNavigationController.navigationBar.isHidden = true
                self.window?.rootViewController = welcomeNavigationController
            }
        }        
        self.window?.rootViewController = launchVC
        window?.makeKeyAndVisible()
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       var photosl: Double = 4.0
      photosl -= (Double(Int(photosl > 266206115.0 || photosl < -266206115.0 ? 74.0 : photosl) % (Swift.max(Int(photosl > 149724957.0 || photosl < -149724957.0 ? 8.0 : photosl), 7))))

        
        IQKeyboardManager.shared().isEnabled = true
        IQKeyboardManager.shared().shouldResignOnTouchOutside = true
        
        ToastManager.shared.position = .center
        
        ApplicationDelegate.shared.application(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )
        initAdjust()
        
        initializeWindow()
        
        if let url = launchOptions?[.url] as? URL {
            _ = handleIncomingURL(url)
        }
        
        KikiSdk.shared.configure()
        
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        return handleIncomingURL(url)
    }

    private func handleIncomingURL(_ url: URL) -> Bool {
        guard url.scheme?.lowercased() == "com.frisbee.discvibe" else { return false }
        return true
    }
    
    private func initAdjust() {
        let appToken = "e0tq9tz3sh6o"
#if DEBUG
        let environment = ADJEnvironmentSandbox
#else
        let environment = ADJEnvironmentProduction
#endif
        guard let config = ADJConfig(appToken: appToken, environment: environment) else { return }

#if DEBUG
        config.logLevel = ADJLogLevelVerbose
#else
        config.logLevel = ADJLogLevelSuppress
#endif

        Adjust.appDidLaunch(config)

        Adjust.trackEvent(ADJEvent(eventToken: "3srxy1"))
        
        scheduleAdjustADIDLogging()
    }
    

    func application(_ application: UIApplication,
                     didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let token = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        kikipt = token
        kikiSaveUserLocalInformationToken(token, kikiSaveKey: "kikipushT")
    }
    
    private func scheduleAdjustADIDLogging() {
        saveAdjustADIDWhenAvailable(retryCount: 0)
    }

    private func saveAdjustADIDWhenAvailable(retryCount: Int) {
        if let adid = Adjust.adid(), !adid.isEmpty {
            kikiSaveUserLocalInformationToken(adid, kikiSaveKey: "kikiadid")
            return
        }

        guard retryCount < 15 else { return }

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [weak self] in
            self?.saveAdjustADIDWhenAvailable(retryCount: retryCount + 1)
        }
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        AppEvents.shared.activateApp()
    }
}

