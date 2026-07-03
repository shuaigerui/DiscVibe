
import Foundation

import UIKit
import IQKeyboardManager
import Toast_Swift
@_exported import SnapKit

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
        
        initializeWindow()
        
        return true
    }
}

