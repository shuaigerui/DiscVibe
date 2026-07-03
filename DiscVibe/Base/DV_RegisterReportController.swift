
import Foundation

import UIKit

enum FS_TabbarType: CaseIterable {
    case home
    case moment
    case video
    case chat
    case profile

    var imageName: String {
       var documentsh: Double = 0.0
    var mcopy_rC: String! = String(cString: [117,112,103,114,97,100,101,0], encoding: .utf8)!
   withUnsafeMutablePointer(to: &mcopy_rC) { pointer in
          _ = pointer.pointee
   }
   if !mcopy_rC.contains("\(documentsh)") {
      mcopy_rC = "\(mcopy_rC.count + 3)"
   }

        switch self {
        case .home:
            return "tab_home"
        case .moment:
            return "tab_moment"
        case .video:
            return "tab_video"
        case .chat:
            return "tab_chat"
        case .profile:
            return "tab_profile"
        }
   if 3 == (5 * mcopy_rC.count) && 5 == (mcopy_rC.count * Int(documentsh > 109798194.0 || documentsh < -109798194.0 ? 74.0 : documentsh)) {
      mcopy_rC.append("\(3)")
   }
    }

    var selImageName: String {
       var elbowj: Bool = true
   withUnsafeMutablePointer(to: &elbowj) { pointer in
          _ = pointer.pointee
   }
   repeat {
       var itemU: String! = String(cString: [99,111,100,101,99,112,114,105,118,0], encoding: .utf8)!
       var locationz: [String: Any]! = [String(cString: [112,114,111,108,111,110,103,0], encoding: .utf8)!:46, String(cString: [115,101,110,99,0], encoding: .utf8)!:64, String(cString: [109,111,100,98,0], encoding: .utf8)!:65]
       var usernameE: [String: Any]! = [String(cString: [114,101,112,114,101,115,101,110,116,105,110,103,0], encoding: .utf8)!:84, String(cString: [105,110,115,112,101,99,116,0], encoding: .utf8)!:92, String(cString: [100,101,99,111,100,101,102,0], encoding: .utf8)!:83]
         locationz = ["\(usernameE.count)": usernameE.count]
      if 4 >= (locationz.keys.count & itemU.count) || (4 & locationz.keys.count) >= 4 {
          var response5: String! = String(cString: [115,109,97,108,108,0], encoding: .utf8)!
          var customg: String! = String(cString: [118,99,111,109,98,105,110,101,0], encoding: .utf8)!
          _ = customg
          var moreb: [Any]! = [78, 49, 89]
          var postsc: Double = 5.0
          var fingerprintX: String! = String(cString: [110,97,116,105,111,110,97,108,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &fingerprintX) { pointer in
                _ = pointer.pointee
         }
         itemU.append("\(usernameE.values.count | customg.count)")
         response5.append("\(3 % (Swift.max(10, fingerprintX.count)))")
         moreb.append(customg.count + response5.count)
         postsc += (Double(Int(postsc > 30282829.0 || postsc < -30282829.0 ? 58.0 : postsc) % (Swift.max(1, 5))))
         fingerprintX = "\(usernameE.count + response5.count)"
      }
      if 2 >= (usernameE.values.count * locationz.keys.count) && (usernameE.values.count * locationz.keys.count) >= 2 {
         locationz = ["\(usernameE.count)": locationz.keys.count]
      }
      while (locationz.values.count <= 4) {
         locationz["\(itemU)"] = itemU.count + locationz.count
         break
      }
      while ((locationz.keys.count | itemU.count) < 2 || 2 < (2 | locationz.keys.count)) {
         locationz = ["\(usernameE.count)": 2]
         break
      }
       var signC: [String: Any]! = [String(cString: [105,110,100,105,110,103,0], encoding: .utf8)!:26, String(cString: [114,101,115,97,109,112,108,101,0], encoding: .utf8)!:32, String(cString: [104,111,108,100,115,0], encoding: .utf8)!:56]
         locationz["\(locationz.count)"] = 2
      repeat {
         locationz = ["\(usernameE.values.count)": 1 - usernameE.keys.count]
         if 201420 == locationz.count {
            break
         }
      } while (201420 == locationz.count) && ((3 - itemU.count) < 4)
      if (usernameE.count | 2) <= 5 {
         itemU.append("\(itemU.count - 2)")
      }
         signC = ["\(usernameE.keys.count)": usernameE.keys.count]
      elbowj = usernameE.keys.count == 64
      if elbowj ? !elbowj : elbowj {
         break
      }
   } while (elbowj ? !elbowj : elbowj) && (elbowj)

            return "\(imageName)_sel"
    }

    var controller: UIViewController {
       var u_heightS: String! = String(cString: [100,105,97,103,111,110,97,108,0], encoding: .utf8)!
   repeat {
      u_heightS.append("\(2)")
      if u_heightS.count == 2542999 {
         break
      }
   } while (u_heightS.count == u_heightS.count) && (u_heightS.count == 2542999)

        switch self {
        case .home:
            return UINavigationController(rootViewController: DV_EventsShopController())
        case .moment:
            return UINavigationController(rootViewController: DV_PermissionReleaseController())
        case .video:
            return UINavigationController(rootViewController: DV_AvatarController())
        case .chat:
            return UINavigationController(rootViewController: DV_MessageMessageController())
        case .profile:
            return UINavigationController(rootViewController: DV_MomentController())
        }
    }
}


private protocol DMDV_DataMenu: AnyObject {
    func customTabBar(_ tabBar: DV_Media, didSelect index: Int)
}

private final class DV_Media: UIView {
private var coins_mark: Int? = 0
var input_sum: Int? = 0



    weak var delegate: DMDV_DataMenu?

    private var tabButtons: [UIButton] = []

    private let backgroundView: UIView = {
       var trimmedF: Double = 4.0
   while (4.16 <= (Double(Double(1) * trimmedF))) {
      trimmedF += (Double(1 * Int(trimmedF > 56235143.0 || trimmedF < -56235143.0 ? 30.0 : trimmedF)))
      break
   }

        let view = UIView()
        view.backgroundColor = UIColor(red: 44 / 255, green: 44 / 255, blue: 44 / 255, alpha: 1)
        return view
    }()

    private let buttonStackView: UIStackView = {
       var saveZ: String! = String(cString: [114,101,109,101,109,98,101,114,0], encoding: .utf8)!
   for _ in 0 ..< 3 {
      saveZ.append("\(saveZ.count | saveZ.count)")
   }

        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        return stackView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }

@discardableResult
 func fatalTintElbow() -> String! {
    var rawm: String! = String(cString: [97,112,112,101,110,100,99,104,97,114,0], encoding: .utf8)!
    _ = rawm
    var modalI: String! = String(cString: [109,100,99,116,0], encoding: .utf8)!
    _ = modalI
    var currentf: String! = String(cString: [115,99,114,111,108,108,105,110,103,0], encoding: .utf8)!
    _ = currentf
   if rawm.hasSuffix(modalI) {
       var commentsc: String! = String(cString: [97,117,116,111,102,105,120,0], encoding: .utf8)!
       var alert8: String! = String(cString: [102,102,116,103,0], encoding: .utf8)!
       var indexi: Float = 2.0
      while ((3 >> (Swift.min(1, alert8.count))) < 3) {
         indexi += Float(1)
         break
      }
      for _ in 0 ..< 2 {
          var with_1R: Double = 5.0
          _ = with_1R
          var configuration1: Bool = false
         alert8.append("\((Int(with_1R > 223148083.0 || with_1R < -223148083.0 ? 57.0 : with_1R) >> (Swift.min(3, labs((configuration1 ? 3 : 2))))))")
      }
       var allj: [String: Any]! = [String(cString: [98,117,115,0], encoding: .utf8)!:String(cString: [119,114,105,116,105,110,103,0], encoding: .utf8)!, String(cString: [97,98,108,101,0], encoding: .utf8)!:String(cString: [112,114,105,110,116,99,111,109,112,0], encoding: .utf8)!]
         alert8 = "\((Int(indexi > 347688610.0 || indexi < -347688610.0 ? 4.0 : indexi)))"
      for _ in 0 ..< 3 {
         alert8.append("\((Int(indexi > 229018439.0 || indexi < -229018439.0 ? 60.0 : indexi) - allj.count))")
      }
         alert8.append("\(1 & commentsc.count)")
      while (!allj.keys.contains("\(indexi)")) {
         indexi -= Float(alert8.count << (Swift.min(labs(3), 5)))
         break
      }
          var delete_9gr: Bool = true
          _ = delete_9gr
         indexi /= Swift.max(5, Float(3 % (Swift.max(3, alert8.count))))
         delete_9gr = commentsc == alert8
         allj["\(indexi)"] = (Int(indexi > 225812939.0 || indexi < -225812939.0 ? 8.0 : indexi) & 2)
      modalI.append("\(alert8.count)")
   }
   if rawm.count <= 4 {
       var provideru: Float = 0.0
       var encodedL: Bool = true
       var inputD: Double = 5.0
      withUnsafeMutablePointer(to: &inputD) { pointer in
    
      }
       var seedJ: String! = String(cString: [99,95,54,49,0], encoding: .utf8)!
       _ = seedJ
      for _ in 0 ..< 2 {
         encodedL = !encodedL
      }
          var spacingi: String! = String(cString: [114,97,108,102,0], encoding: .utf8)!
          _ = spacingi
          var origine: Int = 3
         encodedL = !encodedL && provideru > 18.20
         spacingi.append("\((Int(inputD > 317101442.0 || inputD < -317101442.0 ? 39.0 : inputD)))")
         origine &= 1
         seedJ = "\(((encodedL ? 4 : 2) * 3))"
      if (inputD * 2.99) < 1.32 && (2.99 * inputD) < 1.2 {
         provideru -= (Float((String(cString:[82,0], encoding: .utf8)!) == seedJ ? Int(provideru > 256679995.0 || provideru < -256679995.0 ? 64.0 : provideru) : seedJ.count))
      }
       var elbow0: Bool = false
          var glyphb: String! = String(cString: [111,102,102,115,101,116,115,0], encoding: .utf8)!
          var detectedk: String! = String(cString: [100,101,115,99,114,105,112,116,105,111,110,115,0], encoding: .utf8)!
          _ = detectedk
         elbow0 = encodedL
         glyphb.append("\(glyphb.count)")
         detectedk.append("\(seedJ.count)")
      if 3.90 >= provideru && 4.64 >= (provideru / (Swift.max(3.90, 5))) {
         provideru += (Float(Int(provideru > 226075661.0 || provideru < -226075661.0 ? 5.0 : provideru) + (encodedL ? 3 : 3)))
      }
      while ((1.32 * provideru) >= 4.54 && 5.59 >= (1.32 * provideru)) {
          var mergedb: Bool = true
          _ = mergedb
         seedJ.append("\(((encodedL ? 1 : 5) & Int(inputD > 343875336.0 || inputD < -343875336.0 ? 37.0 : inputD)))")
         mergedb = inputD <= 70.9 && (String(cString:[87,0], encoding: .utf8)!) == seedJ
         break
      }
      for _ in 0 ..< 2 {
         elbow0 = !encodedL
      }
          var previewU: Float = 3.0
         provideru += Float(2)
         previewU += (Float((elbow0 ? 4 : 5) ^ seedJ.count))
      while (elbow0) {
         elbow0 = seedJ.count > 91
         break
      }
      for _ in 0 ..< 3 {
         elbow0 = elbow0 || provideru < 52.99
      }
      modalI = "\((Int(provideru > 108767242.0 || provideru < -108767242.0 ? 7.0 : provideru) - 2))"
   }
      modalI = "\(modalI.count + 3)"
   repeat {
      currentf = "\((currentf == (String(cString:[102,0], encoding: .utf8)!) ? currentf.count : currentf.count))"
      if (String(cString:[102,101,111,122,95,107,111,0], encoding: .utf8)!) == currentf {
         break
      }
   } while ((String(cString:[102,101,111,122,95,107,111,0], encoding: .utf8)!) == currentf) && (currentf != String(cString:[83,0], encoding: .utf8)! || currentf != String(cString:[78,0], encoding: .utf8)!)
   return rawm

}






    func setSelectedIndex(_ index: Int) {

         let fractionalExpects: String! = fatalTintElbow()

      let fractionalExpects_len = fractionalExpects?.count ?? 0
      print(fractionalExpects)

_ = fractionalExpects


       var scrollD: [String: Any]! = [String(cString: [105,110,118,105,116,101,100,0], encoding: .utf8)!:23, String(cString: [97,116,114,97,99,0], encoding: .utf8)!:53, String(cString: [117,114,112,111,115,101,0], encoding: .utf8)!:56]
   for _ in 0 ..< 2 {
       var reportx: String! = String(cString: [102,102,112,108,97,121,0], encoding: .utf8)!
      withUnsafeMutablePointer(to: &reportx) { pointer in
             _ = pointer.pointee
      }
       var overlapu: Double = 0.0
      withUnsafeMutablePointer(to: &overlapu) { pointer in
             _ = pointer.pointee
      }
       var controlC: [Any]! = [35, 39, 59]
      withUnsafeMutablePointer(to: &controlC) { pointer in
             _ = pointer.pointee
      }
       var parentA: Bool = false
         controlC = [reportx.count]
       var fileR: [String: Any]! = [String(cString: [97,110,100,0], encoding: .utf8)!:String(cString: [115,112,101,99,105,102,105,101,100,0], encoding: .utf8)!, String(cString: [101,110,100,112,111,105,110,116,0], encoding: .utf8)!:String(cString: [101,118,112,111,114,116,111,112,0], encoding: .utf8)!, String(cString: [116,102,117,101,108,0], encoding: .utf8)!:String(cString: [105,111,101,114,114,110,111,109,101,109,0], encoding: .utf8)!]
       var photoJ: Float = 5.0
       var window_pz: Float = 2.0
       _ = window_pz
      for _ in 0 ..< 3 {
         controlC = [(Int(overlapu > 147978134.0 || overlapu < -147978134.0 ? 44.0 : overlapu) ^ (parentA ? 5 : 3))]
      }
         overlapu -= (Double(Int(overlapu > 310341973.0 || overlapu < -310341973.0 ? 49.0 : overlapu)))
      repeat {
          var scoreK: Bool = true
          var buttonsd: Double = 2.0
          var tabN: String! = String(cString: [115,104,101,108,108,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &tabN) { pointer in
                _ = pointer.pointee
         }
          var pagez: [String: Any]! = [String(cString: [101,120,99,108,117,100,105,110,103,0], encoding: .utf8)!:String(cString: [98,101,105,103,110,101,116,0], encoding: .utf8)!, String(cString: [102,97,100,115,116,0], encoding: .utf8)!:String(cString: [104,105,103,104,112,111,114,116,0], encoding: .utf8)!, String(cString: [105,110,105,116,97,108,105,122,101,0], encoding: .utf8)!:String(cString: [108,97,110,103,0], encoding: .utf8)!]
          var bottomJ: [String: Any]! = [String(cString: [110,115,117,112,112,111,114,116,101,100,0], encoding: .utf8)!:String(cString: [115,117,98,112,101,108,0], encoding: .utf8)!, String(cString: [112,105,100,0], encoding: .utf8)!:String(cString: [99,105,112,104,101,114,98,121,110,97,109,101,0], encoding: .utf8)!, String(cString: [119,105,110,97,114,109,0], encoding: .utf8)!:String(cString: [114,101,97,100,115,0], encoding: .utf8)!]
         photoJ /= Swift.max(Float(controlC.count), 3)
         scoreK = pagez.values.count <= 65 && !parentA
         buttonsd -= (Double(2 + (scoreK ? 5 : 3)))
         tabN.append("\(((parentA ? 3 : 5)))")
         pagez = ["\(controlC.count)": 2]
         bottomJ = ["\(buttonsd)": (1 << (Swift.min(labs(Int(buttonsd > 191800368.0 || buttonsd < -191800368.0 ? 45.0 : buttonsd)), 3)))]
         if photoJ == 1930761.0 {
            break
         }
      } while (photoJ == 1930761.0) && ((fileR.keys.count | 4) < 4 || 1.77 < (photoJ * 3.78))
         window_pz *= (Float((parentA ? 4 : 4) | Int(window_pz > 333803630.0 || window_pz < -333803630.0 ? 27.0 : window_pz)))
         overlapu -= (Double(reportx == (String(cString:[120,0], encoding: .utf8)!) ? Int(window_pz > 265561044.0 || window_pz < -265561044.0 ? 39.0 : window_pz) : reportx.count))
      for _ in 0 ..< 2 {
         window_pz /= Swift.max(3, Float(controlC.count))
      }
      while (!fileR.keys.contains("\(photoJ)")) {
          var d_layerS: Float = 2.0
          _ = d_layerS
          var remoteu: Double = 3.0
          var anglesf: Bool = true
          var s_viewa: String! = String(cString: [117,116,102,0], encoding: .utf8)!
          var containerL: String! = String(cString: [118,116,114,107,0], encoding: .utf8)!
         photoJ -= (Float((String(cString:[83,0], encoding: .utf8)!) == containerL ? containerL.count : Int(window_pz > 82030773.0 || window_pz < -82030773.0 ? 93.0 : window_pz)))
         d_layerS /= Swift.max((Float(Int(remoteu > 52061720.0 || remoteu < -52061720.0 ? 34.0 : remoteu))), 1)
         remoteu *= (Double(Int(d_layerS > 1156848.0 || d_layerS < -1156848.0 ? 50.0 : d_layerS) - 2))
         anglesf = controlC.count >= 81 || parentA
         s_viewa.append("\(((anglesf ? 5 : 4) % (Swift.max(8, Int(window_pz > 293713533.0 || window_pz < -293713533.0 ? 40.0 : window_pz)))))")
         break
      }
         controlC = [3 << (Swift.min(5, fileR.values.count))]
      repeat {
         window_pz /= Swift.max(5, (Float(reportx == (String(cString:[81,0], encoding: .utf8)!) ? reportx.count : (parentA ? 4 : 3))))
         if 657796.0 == window_pz {
            break
         }
      } while (657796.0 == window_pz) && ((3.68 * window_pz) == 5.20 && 5.78 == (overlapu * 3.68))
      scrollD["\(parentA)"] = 2
   }

        tabButtons.enumerated().forEach { buttonIndex, button in
            button.isSelected = buttonIndex == index
        }
    }

@discardableResult
 func resumeChildPresentationLevelMaskMore(commentsAmount: String!) -> String! {
    var professionZ: Float = 5.0
   withUnsafeMutablePointer(to: &professionZ) { pointer in
    
   }
    var timeoutz: String! = String(cString: [116,95,52,95,118,115,110,112,114,105,110,116,102,0], encoding: .utf8)!
    var incomingK: String! = String(cString: [97,117,116,111,112,108,97,121,105,110,103,0], encoding: .utf8)!
   while ((professionZ - Float(timeoutz.count)) == 5.92) {
      professionZ += (Float((String(cString:[79,0], encoding: .utf8)!) == timeoutz ? Int(professionZ > 353631308.0 || professionZ < -353631308.0 ? 58.0 : professionZ) : timeoutz.count))
      break
   }
      incomingK = "\(timeoutz.count >> (Swift.min(labs(1), 5)))"
   return timeoutz

}






    private func setupUI() {

         var sumaryCelt: String! = resumeChildPresentationLevelMaskMore(commentsAmount:String(cString: [106,112,101,103,108,115,95,100,95,49,51,0], encoding: .utf8)!)

      let sumaryCelt_len = sumaryCelt?.count ?? 0
      if sumaryCelt == "option" {
              print(sumaryCelt)
      }

withUnsafeMutablePointer(to: &sumaryCelt) { pointer in
    
}


       var screen0: String! = String(cString: [120,95,52,0], encoding: .utf8)!
    var prefix_yW: String! = String(cString: [114,116,99,119,101,98,0], encoding: .utf8)!
    _ = prefix_yW
   if 1 < screen0.count {
      prefix_yW.append("\((screen0 == (String(cString:[77,0], encoding: .utf8)!) ? screen0.count : prefix_yW.count))")
   }

   repeat {
       var capturea: Double = 5.0
       var f_layerJ: [Any]! = [36.0]
       var durationB: Double = 4.0
      if f_layerJ.count < 4 {
         f_layerJ = [(Int(durationB > 54086402.0 || durationB < -54086402.0 ? 42.0 : durationB))]
      }
      while (1.60 >= (durationB / (Swift.max(1, capturea)))) {
          var workI: Double = 4.0
          _ = workI
          var point8: String! = String(cString: [101,120,116,101,110,115,105,98,105,108,105,116,121,0], encoding: .utf8)!
         durationB -= (Double(Int(capturea > 43331773.0 || capturea < -43331773.0 ? 53.0 : capturea)))
         workI /= Swift.max((Double(Int(durationB > 357525651.0 || durationB < -357525651.0 ? 90.0 : durationB) % 1)), 1)
         point8 = "\(f_layerJ.count)"
         break
      }
       var verifyC: [String: Any]! = [String(cString: [112,114,101,99,111,109,112,0], encoding: .utf8)!:34, String(cString: [116,105,109,101,112,101,114,102,114,97,109,101,0], encoding: .utf8)!:14, String(cString: [115,117,98,115,116,114,0], encoding: .utf8)!:31]
       var relations4: [String: Any]! = [String(cString: [115,111,100,105,115,99,111,110,110,101,99,116,0], encoding: .utf8)!:7, String(cString: [115,97,109,112,108,105,110,103,0], encoding: .utf8)!:3, String(cString: [101,120,99,108,117,115,105,118,101,0], encoding: .utf8)!:9]
      while ((4 - verifyC.count) > 1) {
         relations4["\(durationB)"] = f_layerJ.count
         break
      }
      if 2.70 > durationB {
         f_layerJ.append((3 % (Swift.max(1, Int(capturea > 126326246.0 || capturea < -126326246.0 ? 21.0 : capturea)))))
      }
          var historyI: String! = String(cString: [116,105,109,101,114,0], encoding: .utf8)!
         verifyC["\(durationB)"] = (3 / (Swift.max(Int(durationB > 192127103.0 || durationB < -192127103.0 ? 27.0 : durationB), 10)))
         historyI = "\(3)"
      if (relations4.values.count + 3) <= 5 {
          var documentsf: String! = String(cString: [109,97,107,101,110,97,110,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &documentsf) { pointer in
                _ = pointer.pointee
         }
          var contentu: Int = 3
          _ = contentu
          var insets8: [String: Any]! = [String(cString: [100,111,99,117,109,101,110,116,97,116,105,111,110,0], encoding: .utf8)!:String(cString: [100,101,108,101,103,97,116,101,0], encoding: .utf8)!, String(cString: [100,101,102,105,110,105,116,105,111,110,115,0], encoding: .utf8)!:String(cString: [115,99,97,108,101,99,117,100,97,0], encoding: .utf8)!, String(cString: [112,103,109,121,117,118,0], encoding: .utf8)!:String(cString: [121,117,118,110,118,99,0], encoding: .utf8)!]
          var emptyq: String! = String(cString: [105,110,116,101,114,115,112,101,114,115,101,100,0], encoding: .utf8)!
         verifyC["\(capturea)"] = verifyC.keys.count
         documentsf = "\(((String(cString:[79,0], encoding: .utf8)!) == documentsf ? contentu : documentsf.count))"
         contentu += verifyC.keys.count
         insets8 = ["\(relations4.values.count)": contentu & 1]
         emptyq.append("\(1)")
      }
          var sectiona: String! = String(cString: [104,102,121,117,0], encoding: .utf8)!
          _ = sectiona
         verifyC["\(capturea)"] = f_layerJ.count % (Swift.max(2, 4))
         sectiona = "\(relations4.keys.count)"
          var comment6: Float = 0.0
         withUnsafeMutablePointer(to: &comment6) { pointer in
    
         }
          var apply6: String! = String(cString: [115,119,97,112,0], encoding: .utf8)!
         f_layerJ = [relations4.values.count]
         comment6 -= Float(verifyC.keys.count + 3)
         apply6.append("\((Int(capturea > 251902815.0 || capturea < -251902815.0 ? 65.0 : capturea)))")
      screen0 = "\(f_layerJ.count)"
      if screen0.count == 3831569 {
         break
      }
   } while (screen0.count == 3831569) && (prefix_yW.count >= screen0.count)
        addSubview(backgroundView)
        addSubview(buttonStackView)

        backgroundView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        buttonStackView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalToSuperview().offset(15)
            make.height.equalTo(49)
        }

        backgroundView.layer.cornerRadius = 20
        backgroundView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        backgroundView.layer.masksToBounds = true

        FS_TabbarType.allCases.enumerated().forEach { index, type in
            let playingButton = UIButton(type: .custom)
            playingButton.tag = index
            playingButton.setImage(UIImage(named: type.imageName)?.withRenderingMode(.alwaysOriginal), for: .normal)
            playingButton.setImage(UIImage(named: type.selImageName)?.withRenderingMode(.alwaysOriginal), for: .selected)
            playingButton.addTarget(self, action: #selector(tabButtonTapped(_:)), for: .touchUpInside)
            tabButtons.append(playingButton)
            buttonStackView.addArrangedSubview(playingButton)
        }
    }

@discardableResult
 func shoulderLineLikeTagNone(saveTime_x_: Double, momentsHad: Double, shopDes: Double) -> Double {
    var origina: String! = String(cString: [116,104,114,111,117,103,104,0], encoding: .utf8)!
    var configurationf: Double = 1.0
   withUnsafeMutablePointer(to: &configurationf) { pointer in
    
   }
       var a_managera: Double = 1.0
       var greenD: String! = String(cString: [115,101,103,109,101,110,116,116,105,109,101,108,105,110,101,95,102,95,48,0], encoding: .utf8)!
      withUnsafeMutablePointer(to: &greenD) { pointer in
             _ = pointer.pointee
      }
       var ids1: String! = String(cString: [115,97,119,0], encoding: .utf8)!
      repeat {
          var interval_0S: Double = 5.0
          var idsH: String! = String(cString: [116,101,115,115,101,108,97,116,111,114,0], encoding: .utf8)!
         a_managera += Double(3)
         interval_0S += Double(idsH.count >> (Swift.min(labs(3), 1)))
         idsH.append("\(1)")
         if 974404.0 == a_managera {
            break
         }
      } while (974404.0 == a_managera) && (4.93 == (Double(greenD.count) + a_managera))
      repeat {
         greenD = "\(1)"
         if greenD.count == 2665998 {
            break
         }
      } while (greenD.count == 2665998) && (1.31 == (Double(greenD.count) / (Swift.max(7, a_managera))) || (a_managera / (Swift.max(Double(greenD.count), 6))) == 1.31)
         a_managera -= Double(2)
       var moditys: Double = 5.0
       var nameP: Double = 4.0
      withUnsafeMutablePointer(to: &nameP) { pointer in
    
      }
         nameP -= (Double(greenD.count >> (Swift.min(3, labs(Int(nameP > 177720790.0 || nameP < -177720790.0 ? 47.0 : nameP))))))
      repeat {
         greenD.append("\(1)")
         if (String(cString:[120,117,51,119,0], encoding: .utf8)!) == greenD {
            break
         }
      } while ((greenD.count * 3) < 4 || 3 < (greenD.count + Int(a_managera > 378484199.0 || a_managera < -378484199.0 ? 55.0 : a_managera))) && ((String(cString:[120,117,51,119,0], encoding: .utf8)!) == greenD)
          var closeI: Bool = false
         withUnsafeMutablePointer(to: &closeI) { pointer in
                _ = pointer.pointee
         }
          var momentB: String! = String(cString: [102,111,117,114,0], encoding: .utf8)!
         ids1 = "\((Int(a_managera > 105641582.0 || a_managera < -105641582.0 ? 31.0 : a_managera) % (Swift.max(2, 1))))"
         closeI = a_managera > Double(greenD.count)
         momentB = "\(greenD.count | 2)"
      if greenD.contains("\(a_managera)") {
         a_managera /= Swift.max(Double(2), 2)
      }
         moditys += (Double(Int(nameP > 216467567.0 || nameP < -216467567.0 ? 11.0 : nameP)))
      origina = "\((Int(a_managera > 90743463.0 || a_managera < -90743463.0 ? 12.0 : a_managera) / (Swift.max(1, 6))))"
      origina = "\(((String(cString:[80,0], encoding: .utf8)!) == origina ? origina.count : Int(configurationf > 182930007.0 || configurationf < -182930007.0 ? 34.0 : configurationf)))"
    var ableConsttime:Double = 0

    return ableConsttime

}






    @objc private func tabButtonTapped(_ sender: UIButton) {

         let smallestCleaned: Double = shoulderLineLikeTagNone(saveTime_x_:100.0, momentsHad:3.0, shopDes:7.0)

      if smallestCleaned >= 4 {
             print(smallestCleaned)
      }

_ = smallestCleaned


       var sampleE: String! = String(cString: [103,109,104,100,0], encoding: .utf8)!
   withUnsafeMutablePointer(to: &sampleE) { pointer in
          _ = pointer.pointee
   }
   repeat {
      sampleE.append("\(sampleE.count)")
      if sampleE == (String(cString:[98,109,49,122,112,104,51,102,0], encoding: .utf8)!) {
         break
      }
   } while (sampleE.count > sampleE.count) && (sampleE == (String(cString:[98,109,49,122,112,104,51,102,0], encoding: .utf8)!))

        delegate?.customTabBar(self, didSelect: sender.tag)
    }
}


class DV_RegisterReportController: UITabBarController {
var frontOffset: Float? = 0.0
private var stopIndex_arr: [Any]!
var blue_size: Float? = 0.0
var blurTag: Int? = 0




    static let customTabBarOverlapHeight: CGFloat = 65

    private let customTabBar = DV_Media()

    var isCustomTabBarHidden: Bool {
       var baseo: String! = String(cString: [121,117,118,109,112,101,103,0], encoding: .utf8)!
   withUnsafeMutablePointer(to: &baseo) { pointer in
          _ = pointer.pointee
   }
      baseo.append("\(baseo.count - 2)")

            return customTabBar.isHidden || customTabBar.alpha == 0
    }

    var modalBottomInset: CGFloat {
       var attributedF: [String: Any]! = [String(cString: [102,114,97,109,101,112,111,111,108,0], encoding: .utf8)!:44, String(cString: [114,101,115,99,104,101,100,117,108,101,0], encoding: .utf8)!:24, String(cString: [105,110,116,101,103,114,105,116,121,0], encoding: .utf8)!:29]
       var outgoingp: String! = String(cString: [109,98,105,110,116,114,97,0], encoding: .utf8)!
       var applep: String! = String(cString: [115,119,114,105,0], encoding: .utf8)!
      withUnsafeMutablePointer(to: &applep) { pointer in
             _ = pointer.pointee
      }
         outgoingp.append("\(applep.count * outgoingp.count)")
         outgoingp.append("\(outgoingp.count)")
      for _ in 0 ..< 1 {
         applep = "\(outgoingp.count)"
      }
       var templatesh: String! = String(cString: [114,97,112,105,100,0], encoding: .utf8)!
       _ = templatesh
       var selectionG: String! = String(cString: [97,116,116,114,105,98,117,116,105,111,110,0], encoding: .utf8)!
       _ = selectionG
          var subtitleL: Float = 3.0
          var scoreH: Double = 3.0
         selectionG.append("\(1)")
         subtitleL /= Swift.max(3, Float(1))
         scoreH -= Double(2)
       var productU: String! = String(cString: [114,101,109,111,116,101,0], encoding: .utf8)!
         templatesh = "\(2)"
         productU.append("\(templatesh.count + 3)")
      attributedF["\(applep)"] = attributedF.values.count

        if isCustomTabBarHidden {
            return view.safeAreaInsets.bottom
        }
        return Self.customTabBarOverlapHeight + view.safeAreaInsets.bottom
    }

@discardableResult
 func openHeightPublishBubbleActor(createArea: [Any]!, rowFingerprint: Bool) -> Double {
    var chat0: Float = 1.0
   withUnsafeMutablePointer(to: &chat0) { pointer in
          _ = pointer.pointee
   }
    var lanb: String! = String(cString: [109,101,115,97,103,101,0], encoding: .utf8)!
    var local_8Y: Double = 0.0
   withUnsafeMutablePointer(to: &local_8Y) { pointer in
          _ = pointer.pointee
   }
      local_8Y -= (Double(Int(local_8Y > 6331641.0 || local_8Y < -6331641.0 ? 31.0 : local_8Y)))
   repeat {
       var microphonet: Int = 2
         microphonet ^= 2 % (Swift.max(5, microphonet))
         microphonet += 3 >> (Swift.min(5, labs(microphonet)))
      while (microphonet >= 1) {
         microphonet /= Swift.max(1, 2)
         break
      }
      local_8Y /= Swift.max((Double((String(cString:[82,0], encoding: .utf8)!) == lanb ? Int(chat0 > 242133190.0 || chat0 < -242133190.0 ? 7.0 : chat0) : lanb.count)), 3)
      if local_8Y == 3713522.0 {
         break
      }
   } while ((Double(3 + Int(chat0))) > 3.25) && (local_8Y == 3713522.0)
   return local_8Y

}






    private func setupViewControllers() {

         let aroundXutil: Double = openHeightPublishBubbleActor(createArea:[String(cString: [115,121,109,98,111,108,105,99,97,116,101,0], encoding: .utf8)!, String(cString: [100,101,99,111,100,101,112,108,97,110,101,0], encoding: .utf8)!, String(cString: [115,95,53,51,0], encoding: .utf8)!], rowFingerprint:true)

      print(aroundXutil)

_ = aroundXutil


       var handlerx: Double = 1.0
   withUnsafeMutablePointer(to: &handlerx) { pointer in
    
   }
    var aspecti: [Any]! = [64, 91]
   repeat {
       var a_viewg: Double = 5.0
       var removej: Double = 1.0
       var networkm: Float = 4.0
       var glyphr: Double = 5.0
       var shop8: Bool = true
      if (glyphr / (Swift.max(4.1, 7))) <= 1.39 || (glyphr / (Swift.max(4.1, 2))) <= 5.97 {
         networkm /= Swift.max(5, (Float(3 * Int(removej > 309827292.0 || removej < -309827292.0 ? 25.0 : removej))))
      }
       var popupn: Float = 2.0
          var pointQ: Double = 0.0
         shop8 = pointQ == 18.4
         a_viewg -= (Double(Int(glyphr > 29986227.0 || glyphr < -29986227.0 ? 63.0 : glyphr) - Int(networkm > 227194410.0 || networkm < -227194410.0 ? 2.0 : networkm)))
       var pathH: String! = String(cString: [99,111,110,102,105,103,117,114,97,116,105,111,110,0], encoding: .utf8)!
       var anchorp: Int = 0
       _ = anchorp
      if 1 < anchorp {
         a_viewg += (Double(1 << (Swift.min(labs(Int(glyphr > 175444371.0 || glyphr < -175444371.0 ? 94.0 : glyphr)), 3))))
      }
         shop8 = glyphr > removej
         shop8 = !shop8
      repeat {
          var nextA: String! = String(cString: [116,119,105,99,101,0], encoding: .utf8)!
          var safep: String! = String(cString: [106,99,115,97,109,112,108,101,0], encoding: .utf8)!
          var clearF: String! = String(cString: [97,112,111,115,0], encoding: .utf8)!
          var stop7: Double = 2.0
          var max_miD: [Any]! = [46]
          _ = max_miD
         shop8 = !shop8 || removej == 65.36
         nextA.append("\(3)")
         safep = "\(nextA.count ^ 3)"
         clearF = "\((1 << (Swift.min(labs(Int(a_viewg > 147266821.0 || a_viewg < -147266821.0 ? 37.0 : a_viewg)), 1))))"
         stop7 += Double(pathH.count >> (Swift.min(3, labs(anchorp))))
         max_miD = [((String(cString:[102,0], encoding: .utf8)!) == nextA ? (shop8 ? 3 : 1) : nextA.count)]
         if shop8 ? !shop8 : shop8 {
            break
         }
      } while (shop8 ? !shop8 : shop8) && (glyphr <= 5.65)
      for _ in 0 ..< 1 {
         anchorp -= pathH.count
      }
      for _ in 0 ..< 2 {
         removej += Double(1 + anchorp)
      }
      if 3.56 > a_viewg && 1.15 > (3.56 - a_viewg) {
         shop8 = 62.86 > (glyphr + a_viewg)
      }
          var componentsn: Int = 0
          var aspectij: String! = String(cString: [114,101,102,101,114,101,110,101,0], encoding: .utf8)!
         removej -= (Double(Int(a_viewg > 44784693.0 || a_viewg < -44784693.0 ? 58.0 : a_viewg)))
         componentsn /= Swift.max(1, 3)
         aspectij = "\((Int(networkm > 263379331.0 || networkm < -263379331.0 ? 86.0 : networkm) | Int(glyphr > 247735347.0 || glyphr < -247735347.0 ? 51.0 : glyphr)))"
      repeat {
         removej += (Double(3 * Int(a_viewg > 310908664.0 || a_viewg < -310908664.0 ? 40.0 : a_viewg)))
         if removej == 1747778.0 {
            break
         }
      } while (removej == 1747778.0) && (pathH.hasSuffix("\(removej)"))
         popupn += (Float(Int(removej > 238815243.0 || removej < -238815243.0 ? 51.0 : removej) & (shop8 ? 3 : 5)))
      aspecti = [1]
      if aspecti.count == 2237019 {
         break
      }
   } while (!aspecti.contains { $0 as? Double == handlerx }) && (aspecti.count == 2237019)

      handlerx += (Double(1 & Int(handlerx > 82189451.0 || handlerx < -82189451.0 ? 45.0 : handlerx)))
        viewControllers = FS_TabbarType.allCases.map { $0.controller }
        updateChildSafeAreaInsets()
    }

@discardableResult
 func revocationFormatLastOriginNetwork(endApple: String!, persistedOverlap: [String: Any]!) -> Float {
    var commenterF: [String: Any]! = [String(cString: [110,111,101,120,112,0], encoding: .utf8)!:89.0]
    var overlapM: Double = 1.0
    var configo: Float = 4.0
      configo /= Swift.max(2, (Float(Int(configo > 66033319.0 || configo < -66033319.0 ? 13.0 : configo) + Int(overlapM > 78578515.0 || overlapM < -78578515.0 ? 2.0 : overlapM))))
   if overlapM == 5.38 {
      overlapM += Double(commenterF.values.count)
   }
   for _ in 0 ..< 1 {
      overlapM -= (Double(Int(overlapM > 203626209.0 || overlapM < -203626209.0 ? 16.0 : overlapM) % (Swift.max(3, 2))))
   }
   return configo

}






    override func viewDidLoad() {

         var anchorPopup: Float = revocationFormatLastOriginNetwork(endApple:String(cString: [122,111,110,101,115,95,57,95,56,53,0], encoding: .utf8)!, persistedOverlap:[String(cString: [97,108,108,111,99,97,116,111,114,115,0], encoding: .utf8)!:59, String(cString: [114,101,97,100,99,98,0], encoding: .utf8)!:90])

      print(anchorPopup)

withUnsafeMutablePointer(to: &anchorPopup) { pointer in
        _ = pointer.pointee
}


       var navigationb: Bool = false
    var loginZ: String! = String(cString: [119,97,114,110,105,110,103,115,0], encoding: .utf8)!
   withUnsafeMutablePointer(to: &loginZ) { pointer in
          _ = pointer.pointee
   }
   while (loginZ.count < 3) {
       var hintf: [Any]! = [66, 14, 36]
       _ = hintf
       var bottomc: Double = 3.0
       var fully: [Any]! = [UILabel()]
       var audio8: [String: Any]! = [String(cString: [117,110,109,97,114,107,0], encoding: .utf8)!:32, String(cString: [116,97,98,108,101,116,0], encoding: .utf8)!:79]
      withUnsafeMutablePointer(to: &audio8) { pointer in
    
      }
      while (fully.count < 3) {
         audio8["\(bottomc)"] = 3
         break
      }
          var pageI: [String: Any]! = [String(cString: [110,97,116,117,114,97,108,0], encoding: .utf8)!:27, String(cString: [115,116,101,114,101,111,100,0], encoding: .utf8)!:0, String(cString: [99,111,109,102,111,114,116,0], encoding: .utf8)!:49]
          var history6: Int = 1
          var messageg: Double = 2.0
         fully.append(audio8.keys.count + hintf.count)
         pageI["\(history6)"] = 2
         history6 >>= Swift.min(pageI.keys.count, 4)
         messageg += Double(history6 & 2)
         bottomc += Double(1)
      for _ in 0 ..< 3 {
         hintf.append(3 * hintf.count)
      }
      for _ in 0 ..< 1 {
          var launchS: String! = String(cString: [115,121,110,99,104,114,111,110,105,122,97,98,108,101,0], encoding: .utf8)!
          var savedr: Double = 5.0
          var infoh: String! = String(cString: [99,111,100,101,115,0], encoding: .utf8)!
         audio8[infoh] = (Int(savedr > 153758334.0 || savedr < -153758334.0 ? 32.0 : savedr))
         launchS.append("\(audio8.count)")
      }
      repeat {
          var privacy8: String! = String(cString: [98,97,115,105,99,97,108,108,121,0], encoding: .utf8)!
          var transactionsy: [Any]! = [12, 100, 37]
          var defaults_: String! = String(cString: [112,114,111,98,97,98,108,101,0], encoding: .utf8)!
          _ = defaults_
          var persistedv: Int = 0
          var bottomO: [Any]! = [String(cString: [109,95,51,53,0], encoding: .utf8)!]
          _ = bottomO
         audio8[privacy8] = 1 & privacy8.count
         transactionsy = [defaults_.count ^ 2]
         defaults_ = "\(hintf.count % 3)"
         persistedv /= Swift.max(2, 2 | bottomO.count)
         bottomO = [((String(cString:[77,0], encoding: .utf8)!) == defaults_ ? bottomO.count : defaults_.count)]
         if 1405668 == audio8.count {
            break
         }
      } while (1405668 == audio8.count) && (!audio8.keys.contains("\(hintf.count)"))
         fully = [3]
       var defaultsc: String! = String(cString: [106,111,117,114,110,97,108,110,97,109,101,0], encoding: .utf8)!
       var horizontalK: String! = String(cString: [114,101,103,105,115,116,101,114,105,110,103,0], encoding: .utf8)!
      for _ in 0 ..< 3 {
          var loggedM: [String: Any]! = [String(cString: [119,115,97,117,100,0], encoding: .utf8)!:79, String(cString: [97,109,101,114,97,0], encoding: .utf8)!:19, String(cString: [116,114,97,110,115,97,99,116,105,111,110,115,0], encoding: .utf8)!:33]
          _ = loggedM
          var inputb: String! = String(cString: [109,107,100,105,114,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &inputb) { pointer in
    
         }
          var first8: [String: Any]! = [String(cString: [100,97,105,108,121,0], encoding: .utf8)!:47, String(cString: [97,99,100,115,112,0], encoding: .utf8)!:74, String(cString: [117,110,105,116,116,101,115,116,0], encoding: .utf8)!:51]
          var pauseh: Bool = true
         hintf = [(inputb == (String(cString:[71,0], encoding: .utf8)!) ? inputb.count : Int(bottomc > 133809064.0 || bottomc < -133809064.0 ? 83.0 : bottomc))]
         loggedM = ["\(loggedM.count)": horizontalK.count]
         first8 = ["\(fully.count)": 1]
         pauseh = bottomc >= Double(loggedM.keys.count)
      }
       var bluey: String! = String(cString: [101,120,116,101,110,115,105,98,108,101,0], encoding: .utf8)!
       _ = bluey
         horizontalK = "\(2 + fully.count)"
          var credential9: Bool = false
          var encodedj: [Any]! = [69, 13]
          var policyI: Float = 5.0
          _ = policyI
         audio8 = ["\(encodedj.count)": horizontalK.count << (Swift.min(2, encodedj.count))]
         credential9 = (encodedj.contains { $0 as? Float == policyI })
         policyI -= Float(encodedj.count)
         defaultsc.append("\(((String(cString:[78,0], encoding: .utf8)!) == horizontalK ? horizontalK.count : Int(bottomc > 242732380.0 || bottomc < -242732380.0 ? 4.0 : bottomc)))")
         bluey = "\(bluey.count)"
      loginZ = "\(((navigationb ? 5 : 4) + loginZ.count))"
      break
   }

      loginZ = "\(loginZ.count)"
        super.viewDidLoad()
        setupViewControllers()
        setupCustomTabBar()
        selectedIndex = 0
        customTabBar.setSelectedIndex(0)
        tabBar.isHidden = true
    }

@discardableResult
 func closeAreaDelay(resolveLeft: Double, coinsEdit: [String: Any]!) -> String! {
    var max_6wh: String! = String(cString: [111,117,116,100,97,116,101,100,0], encoding: .utf8)!
    _ = max_6wh
    var users8: [Any]! = [63, 70, 30]
    var allh: String! = String(cString: [100,105,108,97,116,101,0], encoding: .utf8)!
   withUnsafeMutablePointer(to: &allh) { pointer in
    
   }
   if max_6wh.count < 3 {
      max_6wh = "\(users8.count / 3)"
   }
   repeat {
       var professionm: String! = String(cString: [114,101,101,110,97,98,108,101,0], encoding: .utf8)!
       var header0: Double = 3.0
      withUnsafeMutablePointer(to: &header0) { pointer in
    
      }
         professionm = "\(((String(cString:[81,0], encoding: .utf8)!) == professionm ? professionm.count : Int(header0 > 22881011.0 || header0 < -22881011.0 ? 15.0 : header0)))"
         professionm = "\((Int(header0 > 292176683.0 || header0 < -292176683.0 ? 34.0 : header0)))"
         header0 += (Double(2 >> (Swift.min(2, labs(Int(header0 > 321806974.0 || header0 < -321806974.0 ? 40.0 : header0))))))
      if !professionm.contains("\(header0)") {
         header0 /= Swift.max(4, Double(2 >> (Swift.min(2, professionm.count))))
      }
         header0 += Double(professionm.count ^ 1)
         header0 -= (Double((String(cString:[82,0], encoding: .utf8)!) == professionm ? Int(header0 > 25697305.0 || header0 < -25697305.0 ? 87.0 : header0) : professionm.count))
      max_6wh.append("\(users8.count - 3)")
      if (String(cString:[113,98,110,110,114,57,114,119,121,0], encoding: .utf8)!) == max_6wh {
         break
      }
   } while (!max_6wh.contains("\(allh.count)")) && ((String(cString:[113,98,110,110,114,57,114,119,121,0], encoding: .utf8)!) == max_6wh)
       var mutuallyc: Bool = false
      withUnsafeMutablePointer(to: &mutuallyc) { pointer in
             _ = pointer.pointee
      }
       var guide0: [Any]! = [83, 15]
      if (guide0.count * 2) < 2 {
         guide0 = [guide0.count ^ 1]
      }
         guide0.append(guide0.count % 2)
      allh.append("\(allh.count / (Swift.max(3, 1)))")
   return max_6wh

}






    func setCustomTabBarHidden(_ hidden: Bool, animated: Bool = true) {

         let nidsHardthresh: String! = closeAreaDelay(resolveLeft:71.0, coinsEdit:[String(cString: [115,116,117,110,95,108,95,54,0], encoding: .utf8)!:34, String(cString: [115,99,97,110,115,0], encoding: .utf8)!:47, String(cString: [112,117,110,99,104,0], encoding: .utf8)!:40])

      print(nidsHardthresh)
      let nidsHardthresh_len = nidsHardthresh?.count ?? 0

_ = nidsHardthresh


       var template_yB: Double = 4.0
   withUnsafeMutablePointer(to: &template_yB) { pointer in
    
   }
    var enabledY: Bool = true
       var resolveY: [Any]! = [86, 22]
       var tapL: [String: Any]! = [String(cString: [99,111,100,101,99,115,117,98,98,108,111,99,107,0], encoding: .utf8)!:96, String(cString: [100,101,114,105,118,97,116,105,118,101,0], encoding: .utf8)!:35]
         resolveY.append(resolveY.count % 3)
      for _ in 0 ..< 2 {
          var reportedl: String! = String(cString: [109,101,101,116,117,112,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &reportedl) { pointer in
                _ = pointer.pointee
         }
          var refresht: Double = 0.0
          _ = refresht
          var appearanceF: String! = String(cString: [103,101,115,116,117,114,101,115,0], encoding: .utf8)!
         resolveY.append(reportedl.count)
         refresht /= Swift.max(4, Double(tapL.keys.count / (Swift.max(resolveY.count, 1))))
         appearanceF.append("\(((String(cString:[100,0], encoding: .utf8)!) == reportedl ? reportedl.count : tapL.keys.count))")
      }
      for _ in 0 ..< 2 {
         tapL["\(resolveY.count)"] = tapL.values.count
      }
         tapL = ["\(tapL.count)": tapL.keys.count]
      for _ in 0 ..< 3 {
         resolveY = [tapL.keys.count]
      }
      for _ in 0 ..< 1 {
          var checka: String! = String(cString: [112,108,97,99,101,115,0], encoding: .utf8)!
          _ = checka
          var publishf: Double = 2.0
         tapL = ["\(tapL.count)": 3]
         checka = "\((1 ^ Int(publishf > 304560004.0 || publishf < -304560004.0 ? 25.0 : publishf)))"
         publishf -= Double(3)
      }
      enabledY = !enabledY || resolveY.count > 45

      enabledY = !enabledY
        let tap = {
            self.customTabBar.alpha = hidden ? 0 : 1
            self.customTabBar.isHidden = hidden
   while ((2.97 - template_yB) == 1.9 || 2.77 == (template_yB - 2.97)) {
      template_yB -= (Double(Int(template_yB > 234829317.0 || template_yB < -234829317.0 ? 14.0 : template_yB)))
      break
   }
            self.updateChildSafeAreaInsets(tabBarHidden: hidden)
        }

        guard animated else {
            tap()
            return
        }

        if hidden {
            UIView.animate(withDuration: 0.25, animations: tap)
        } else {
            customTabBar.isHidden = false
            UIView.animate(withDuration: 0.25) {
                self.customTabBar.alpha = 1
                self.updateChildSafeAreaInsets(tabBarHidden: false)
            }
        }
    }

@discardableResult
 func insertFollowingOwnPlayer(pageNormal: String!) -> Double {
    var resultp: [Any]! = [String(cString: [109,97,115,107,101,100,109,101,114,103,101,0], encoding: .utf8)!, String(cString: [101,121,99,104,97,105,110,0], encoding: .utf8)!]
   withUnsafeMutablePointer(to: &resultp) { pointer in
          _ = pointer.pointee
   }
    var max_iA: Float = 5.0
    var audio3: Double = 2.0
   for _ in 0 ..< 1 {
      audio3 /= Swift.max(Double(resultp.count), 3)
   }
   if 4.86 >= (max_iA - Float(resultp.count)) || 4.86 >= (max_iA - Float(resultp.count)) {
       var partnera: [String: Any]! = [String(cString: [109,117,108,116,105,115,116,101,112,95,97,95,54,56,0], encoding: .utf8)!:30, String(cString: [112,111,108,108,0], encoding: .utf8)!:30, String(cString: [120,95,53,54,0], encoding: .utf8)!:51]
      withUnsafeMutablePointer(to: &partnera) { pointer in
    
      }
       var micF: String! = String(cString: [115,101,116,116,108,101,0], encoding: .utf8)!
       _ = micF
       var bubblek: String! = String(cString: [101,120,101,99,0], encoding: .utf8)!
       _ = bubblek
       var listm: String! = String(cString: [109,115,101,99,115,0], encoding: .utf8)!
       var endc: Int = 4
       _ = endc
      repeat {
         endc -= (micF == (String(cString:[70,0], encoding: .utf8)!) ? bubblek.count : micF.count)
         if 160908 == endc {
            break
         }
      } while ((micF.count / 4) >= 5 || (micF.count / 4) >= 3) && (160908 == endc)
         bubblek = "\(3)"
          var baseU: String! = String(cString: [111,118,101,114,104,101,97,100,95,98,95,49,48,48,0], encoding: .utf8)!
         micF.append("\(partnera.keys.count + 2)")
         baseU = "\(listm.count)"
         partnera[listm] = ((String(cString:[74,0], encoding: .utf8)!) == listm ? partnera.keys.count : listm.count)
          var hangW: String! = String(cString: [112,108,97,105,110,0], encoding: .utf8)!
          _ = hangW
          var customq: String! = String(cString: [102,114,111,122,101,110,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &customq) { pointer in
                _ = pointer.pointee
         }
          var capture3: String! = String(cString: [107,118,111,0], encoding: .utf8)!
         listm = "\(1)"
         hangW.append("\(3 ^ customq.count)")
         customq.append("\(endc)")
         capture3.append("\(micF.count)")
         endc /= Swift.max(5, bubblek.count - listm.count)
      repeat {
         listm.append("\(bubblek.count / 3)")
         if (String(cString:[100,105,98,52,52,113,56,49,121,0], encoding: .utf8)!) == listm {
            break
         }
      } while ((String(cString:[100,105,98,52,52,113,56,49,121,0], encoding: .utf8)!) == listm) && (endc == listm.count)
         bubblek = "\(bubblek.count << (Swift.min(labs(1), 3)))"
      repeat {
         bubblek.append("\(1)")
         if (String(cString:[97,95,112,50,114,55,110,120,105,99,0], encoding: .utf8)!) == bubblek {
            break
         }
      } while ((String(cString:[97,95,112,50,114,55,110,120,105,99,0], encoding: .utf8)!) == bubblek) && (bubblek.count == 5)
      for _ in 0 ..< 3 {
         listm = "\((bubblek == (String(cString:[50,0], encoding: .utf8)!) ? endc : bubblek.count))"
      }
          var storedz: String! = String(cString: [99,111,110,116,114,111,108,108,101,100,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &storedz) { pointer in
                _ = pointer.pointee
         }
          var attributedQ: [String: Any]! = [String(cString: [105,110,99,111,114,114,101,99,116,95,116,95,55,51,0], encoding: .utf8)!:true]
          _ = attributedQ
          var likedD: String! = String(cString: [114,101,109,111,118,101,103,114,97,105,110,0], encoding: .utf8)!
         micF.append("\(2 * likedD.count)")
         storedz.append("\(attributedQ.values.count)")
         attributedQ = ["\(attributedQ.count)": 2 & endc]
         partnera["\(endc)"] = endc / 1
      repeat {
         bubblek = "\(3 | micF.count)"
         if bubblek.count == 4381372 {
            break
         }
      } while (bubblek.count == 4381372) && ((endc << (Swift.min(labs(4), 4))) < 2 && 3 < (bubblek.count << (Swift.min(labs(4), 4))))
         listm = "\(listm.count)"
      if micF.count > 3 || bubblek != String(cString:[74,0], encoding: .utf8)! {
         bubblek = "\(bubblek.count)"
      }
      max_iA += (Float(Int(audio3 > 284690200.0 || audio3 < -284690200.0 ? 83.0 : audio3)))
   }
       var magnitudeK: String! = String(cString: [112,114,101,116,116,121,0], encoding: .utf8)!
         magnitudeK.append("\((magnitudeK == (String(cString:[116,0], encoding: .utf8)!) ? magnitudeK.count : magnitudeK.count))")
       var recentu: [Any]! = [12, 97, 26]
       var ainitialsj: [Any]! = [[String(cString: [116,97,112,116,105,99,0], encoding: .utf8)!:8, String(cString: [97,109,114,110,98,100,97,116,97,0], encoding: .utf8)!:68, String(cString: [119,95,51,51,95,115,116,114,101,115,115,0], encoding: .utf8)!:35]]
      if recentu.count >= 2 {
          var extz: String! = String(cString: [116,97,117,0], encoding: .utf8)!
          var introm: String! = String(cString: [102,111,114,95,109,95,55,57,0], encoding: .utf8)!
         ainitialsj.append(recentu.count | 1)
         extz = "\(ainitialsj.count)"
         introm = "\(3)"
      }
      audio3 += Double(3 - magnitudeK.count)
   return audio3

}






    private func setupCustomTabBar() {

         var condAvprogram: Double = insertFollowingOwnPlayer(pageNormal:String(cString: [100,101,99,111,100,105,110,103,0], encoding: .utf8)!)

      print(condAvprogram)

withUnsafeMutablePointer(to: &condAvprogram) { pointer in
    
}


       var pointw: [String: Any]! = [String(cString: [109,97,116,116,101,0], encoding: .utf8)!:String(cString: [114,101,115,116,97,107,101,0], encoding: .utf8)!, String(cString: [118,109,112,114,105,110,116,102,0], encoding: .utf8)!:String(cString: [110,111,110,101,109,112,116,121,0], encoding: .utf8)!]
      pointw = ["\(pointw.count)": pointw.values.count]

        customTabBar.delegate = self
        view.addSubview(customTabBar)
        customTabBar.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-65)
        }
    }


    override func viewSafeAreaInsetsDidChange() {
       var renderer7: Float = 4.0
    _ = renderer7
      renderer7 /= Swift.max(4, (Float(Int(renderer7 > 321633401.0 || renderer7 < -321633401.0 ? 74.0 : renderer7))))

        super.viewSafeAreaInsetsDidChange()
        updateChildSafeAreaInsets()
    }


    private func updateChildSafeAreaInsets(tabBarHidden: Bool = false) {
       var summary9: String! = String(cString: [115,112,97,119,110,0], encoding: .utf8)!
   while (summary9.count <= 1) {
       var scrollU: String! = String(cString: [116,119,111,115,99,97,108,101,0], encoding: .utf8)!
       var magnitude3: Double = 2.0
       var personr: String! = String(cString: [102,105,110,97,108,105,122,101,100,0], encoding: .utf8)!
       var resolvedp: Float = 3.0
       _ = resolvedp
       var stopn: Double = 4.0
      if (resolvedp / 3.56) < 3.38 {
          var section7: String! = String(cString: [115,105,112,114,0], encoding: .utf8)!
         resolvedp += Float(section7.count)
      }
         resolvedp -= Float(2)
          var sectionv: [String: Any]! = [String(cString: [118,112,109,99,0], encoding: .utf8)!:71, String(cString: [114,101,97,100,111,110,108,121,0], encoding: .utf8)!:50, String(cString: [100,101,110,111,105,115,101,0], encoding: .utf8)!:34]
          var visiblez: String! = String(cString: [108,111,117,100,115,112,101,97,107,101,114,0], encoding: .utf8)!
         resolvedp -= Float(2 - personr.count)
         sectionv = ["\(magnitude3)": 3 >> (Swift.min(5, personr.count))]
         visiblez = "\((Int(resolvedp > 110835235.0 || resolvedp < -110835235.0 ? 86.0 : resolvedp) ^ scrollU.count))"
      for _ in 0 ..< 2 {
         personr = "\((scrollU.count * Int(magnitude3 > 334071069.0 || magnitude3 < -334071069.0 ? 89.0 : magnitude3)))"
      }
       var componentsZ: Bool = true
      withUnsafeMutablePointer(to: &componentsZ) { pointer in
             _ = pointer.pointee
      }
       var main_t_: Bool = true
      for _ in 0 ..< 1 {
         stopn /= Swift.max((Double(personr.count / (Swift.max(1, Int(stopn > 227280467.0 || stopn < -227280467.0 ? 40.0 : stopn))))), 2)
      }
         stopn += (Double((String(cString:[74,0], encoding: .utf8)!) == personr ? personr.count : (componentsZ ? 3 : 2)))
      for _ in 0 ..< 1 {
          var buyR: [Any]! = [93, 78]
          var messagesl: String! = String(cString: [105,110,100,105,99,97,116,105,111,110,0], encoding: .utf8)!
          var desn: Bool = false
          var indicatorJ: String! = String(cString: [107,101,121,102,114,97,109,101,115,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &indicatorJ) { pointer in
    
         }
          var ids9: String! = String(cString: [99,102,102,116,98,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &ids9) { pointer in
                _ = pointer.pointee
         }
         personr.append("\(((String(cString:[73,0], encoding: .utf8)!) == scrollU ? Int(magnitude3 > 50919733.0 || magnitude3 < -50919733.0 ? 56.0 : magnitude3) : scrollU.count))")
         buyR.append(ids9.count >> (Swift.min(labs(3), 2)))
         messagesl = "\(3 ^ buyR.count)"
         desn = (String(cString:[51,0], encoding: .utf8)!) == scrollU
         indicatorJ.append("\(((componentsZ ? 3 : 5) | buyR.count))")
         ids9.append("\(ids9.count)")
      }
      if 5 < (scrollU.count ^ 1) || (stopn + Double(scrollU.count)) < 1.74 {
          var credential9: [String: Any]! = [String(cString: [112,117,112,105,108,0], encoding: .utf8)!:String(cString: [99,114,101,97,116,105,110,103,0], encoding: .utf8)!]
          var buttonsm: Float = 4.0
          var resourcex: String! = String(cString: [114,97,112,112,101,114,0], encoding: .utf8)!
          var thumbnailI: [Any]! = [15, 3, 100]
          _ = thumbnailI
          var firstf: String! = String(cString: [119,105,100,101,0], encoding: .utf8)!
         scrollU.append("\(scrollU.count)")
         credential9["\(magnitude3)"] = (Int(stopn > 244908562.0 || stopn < -244908562.0 ? 63.0 : stopn) * 2)
         buttonsm += Float(1 - scrollU.count)
         resourcex = "\((Int(resolvedp > 317566846.0 || resolvedp < -317566846.0 ? 13.0 : resolvedp) ^ 1))"
         thumbnailI = [thumbnailI.count | 1]
         firstf.append("\((Int(stopn > 266241494.0 || stopn < -266241494.0 ? 35.0 : stopn) - credential9.values.count))")
      }
      while ((Int(resolvedp > 178916400.0 || resolvedp < -178916400.0 ? 10.0 : resolvedp)) == personr.count) {
         personr.append("\((Int(resolvedp > 158590970.0 || resolvedp < -158590970.0 ? 46.0 : resolvedp) ^ personr.count))")
         break
      }
          var checkU: Float = 1.0
          var photosz: Float = 1.0
          var transactionsr: String! = String(cString: [114,101,103,105,115,116,114,97,116,105,111,110,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &transactionsr) { pointer in
    
         }
         magnitude3 += (Double(Int(resolvedp > 219039488.0 || resolvedp < -219039488.0 ? 6.0 : resolvedp) | 3))
         checkU /= Swift.max(3, (Float((main_t_ ? 2 : 2) >> (Swift.min(labs(Int(resolvedp > 227588239.0 || resolvedp < -227588239.0 ? 1.0 : resolvedp)), 1)))))
         photosz -= Float(transactionsr.count / (Swift.max(personr.count, 6)))
         transactionsr = "\(3)"
         personr = "\((1 - Int(stopn > 134803289.0 || stopn < -134803289.0 ? 90.0 : stopn)))"
          var skillL: String! = String(cString: [99,101,110,116,114,97,108,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &skillL) { pointer in
    
         }
          var showO: Double = 5.0
          var ids_: String! = String(cString: [105,110,116,114,97,120,109,98,117,118,0], encoding: .utf8)!
         stopn -= (Double(3 | Int(stopn > 303146675.0 || stopn < -303146675.0 ? 43.0 : stopn)))
         skillL.append("\((skillL == (String(cString:[116,0], encoding: .utf8)!) ? skillL.count : (main_t_ ? 1 : 2)))")
         showO += (Double(Int(stopn > 130117614.0 || stopn < -130117614.0 ? 33.0 : stopn) >> (Swift.min(labs(3), 1))))
         ids_.append("\((skillL == (String(cString:[107,0], encoding: .utf8)!) ? Int(magnitude3 > 180187413.0 || magnitude3 < -180187413.0 ? 7.0 : magnitude3) : skillL.count))")
         stopn -= (Double(Int(magnitude3 > 162032646.0 || magnitude3 < -162032646.0 ? 99.0 : magnitude3)))
      while (2 == scrollU.count) {
         scrollU = "\(personr.count)"
         break
      }
      summary9 = "\(2)"
      break
   }

        let check: CGFloat = tabBarHidden ? 0 : Self.customTabBarOverlapHeight
        viewControllers?.forEach { controller in
            controller.additionalSafeAreaInsets.bottom = check
        }
    }
}


extension DV_RegisterReportController: DMDV_DataMenu {

@discardableResult
 func reviseGraphicsBringVideoErrorTableView() -> UITableView! {
    var authorizationZ: Bool = true
    var sampleC: Double = 3.0
    _ = sampleC
   if sampleC == 4.71 {
       var avatars4: Double = 4.0
      withUnsafeMutablePointer(to: &avatars4) { pointer in
    
      }
       var morel: String! = String(cString: [105,115,119,104,105,116,101,115,112,97,99,101,0], encoding: .utf8)!
      if 2 == (5 >> (Swift.min(3, morel.count))) && (avatars4 / (Swift.max(1.46, 2))) == 2.31 {
          var lastq: String! = String(cString: [100,97,116,97,98,97,115,101,0], encoding: .utf8)!
          var publishg: Bool = true
          _ = publishg
          var aspectX: [Any]! = [35, 44, 89]
          var buttonso: String! = String(cString: [97,117,116,104,105,110,102,111,95,56,95,56,51,0], encoding: .utf8)!
          _ = buttonso
         morel = "\(2 + lastq.count)"
         publishg = 80 >= aspectX.count
         aspectX.append(aspectX.count)
         buttonso = "\((Int(avatars4 > 176930140.0 || avatars4 < -176930140.0 ? 75.0 : avatars4) & 1))"
      }
         morel = "\(3)"
         morel = "\(morel.count / 3)"
      repeat {
         morel.append("\((Int(avatars4 > 295388255.0 || avatars4 < -295388255.0 ? 48.0 : avatars4)))")
         if morel == (String(cString:[52,103,56,97,116,105,110,55,98,0], encoding: .utf8)!) {
            break
         }
      } while ((avatars4 + Double(morel.count)) < 5.83 || (3 | morel.count) < 5) && (morel == (String(cString:[52,103,56,97,116,105,110,55,98,0], encoding: .utf8)!))
      repeat {
         avatars4 += (Double(3 * Int(avatars4 > 362599079.0 || avatars4 < -362599079.0 ? 92.0 : avatars4)))
         if 1110852.0 == avatars4 {
            break
         }
      } while (1110852.0 == avatars4) && (2.98 >= avatars4)
       var defaults1: Float = 5.0
       var topici: Float = 1.0
         defaults1 -= (Float(Int(topici > 372449583.0 || topici < -372449583.0 ? 48.0 : topici)))
      sampleC -= Double(3)
   }
      sampleC -= (Double(Int(sampleC > 107597922.0 || sampleC < -107597922.0 ? 35.0 : sampleC) / (Swift.max(2, (authorizationZ ? 5 : 2)))))
     let restoreObservation: String! = String(cString: [100,111,108,108,97,114,0], encoding: .utf8)!
     let binitialsFriends: UIImageView! = UIImageView(image:UIImage(named:String(cString: [99,111,109,112,97,114,97,98,108,101,0], encoding: .utf8)!), highlightedImage:UIImage(named:String(cString: [115,117,101,108,111,0], encoding: .utf8)!))
     let resultUrl: Float = 66.0
    var coeffsPixctx:UITableView! = UITableView()
    coeffsPixctx.frame = CGRect(x: 299, y: 27, width: 0, height: 0)
    coeffsPixctx.alpha = 0.4;
    coeffsPixctx.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: 0)
    coeffsPixctx.dataSource = nil
    coeffsPixctx.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: 0)
    coeffsPixctx.delegate = nil
    binitialsFriends.alpha = 0.9;
    binitialsFriends.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: 0)
    binitialsFriends.frame = CGRect(x: 28, y: 260, width: 0, height: 0)
    binitialsFriends.animationRepeatCount = 5
    binitialsFriends.image = UIImage(named:String(cString: [117,114,108,0], encoding: .utf8)!)
    binitialsFriends.contentMode = .scaleAspectFit
    

    
    return coeffsPixctx

}






    fileprivate func customTabBar(_ tabBar: DV_Media, didSelect index: Int) {

         var replayedDrawutils: UITableView! = reviseGraphicsBringVideoErrorTableView()

      if replayedDrawutils != nil {
          self.view.addSubview(replayedDrawutils)
          let replayedDrawutils_tag = replayedDrawutils.tag
      }
      else {
          print("replayedDrawutils is nil")      }

withUnsafeMutablePointer(to: &replayedDrawutils) { pointer in
        _ = pointer.pointee
}


       var deletedt: Int = 4
      deletedt -= deletedt & 3

        guard selectedIndex != index else { return }
        selectedIndex = index
        customTabBar.setSelectedIndex(index)
    }
}
