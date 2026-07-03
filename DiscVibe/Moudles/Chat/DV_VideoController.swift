
import Foundation

import AVFoundation
import UIKit

class DV_VideoController: DV_MainDelegateController {
private var send_count: Int? = 0
var configScreen_dictionary: [String: Any]!
private var likesVideo_string: String!
private var glyph_flag: Int? = 0




    private let user: DV_PersonInfo

    private var captureSession: AVCaptureSession?
    private var previewLayer: AVCaptureVideoPreviewLayer?
    private var videoInput: AVCaptureDeviceInput?
    private var audioInput: AVCaptureDeviceInput?

    private var isUsingFrontCamera = true
    private var isCameraEnabled = true
    private var isMicEnabled = true

    init(user: DV_PersonInfo) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

@discardableResult
 func playFollowingSafeCompleteBlack(loadingStorage: Bool) -> Double {
    var q_viewN: Int = 4
   withUnsafeMutablePointer(to: &q_viewN) { pointer in
    
   }
    var reuseE: String! = String(cString: [100,114,111,112,112,101,100,0], encoding: .utf8)!
    _ = reuseE
   for _ in 0 ..< 2 {
      reuseE.append("\(((String(cString:[100,0], encoding: .utf8)!) == reuseE ? reuseE.count : q_viewN))")
   }
       var encodedH: [String: Any]! = [String(cString: [99,97,114,100,105,110,97,108,105,116,121,0], encoding: .utf8)!:90, String(cString: [114,97,119,100,101,99,0], encoding: .utf8)!:19, String(cString: [110,101,109,111,110,105,99,0], encoding: .utf8)!:81]
          var a_countz: [Any]! = [String(cString: [100,114,105,118,101,114,115,0], encoding: .utf8)!, String(cString: [103,101,116,110,97,109,101,105,110,102,111,0], encoding: .utf8)!, String(cString: [102,105,114,101,100,0], encoding: .utf8)!]
          _ = a_countz
         encodedH = ["\(encodedH.keys.count)": encodedH.count / (Swift.max(a_countz.count, 3))]
      while ((encodedH.values.count - encodedH.count) >= 5 || 5 >= (encodedH.values.count - 5)) {
         encodedH["\(encodedH.count)"] = encodedH.count >> (Swift.min(labs(1), 1))
         break
      }
         encodedH["\(encodedH.values.count)"] = encodedH.values.count
      q_viewN %= Swift.max(2 >> (Swift.min(1, labs(q_viewN))), 3)
     var hadRemote: Double = 42.0
     var photoPolicy: Double = 100.0
    var idetViableAttribution:Double = 0
    hadRemote /= Swift.max(photoPolicy, 1)
    idetViableAttribution -= Double(hadRemote)
    photoPolicy += 3
    idetViableAttribution /= Swift.max(Double(photoPolicy), 1)

    return idetViableAttribution

}






    private func setupCamera() {

         let volumePink: Double = playFollowingSafeCompleteBlack(loadingStorage:false)

      if volumePink > 26 {
             print(volumePink)
      }

_ = volumePink


       var locationW: Int = 4
       var sentence5: String! = String(cString: [115,116,117,110,0], encoding: .utf8)!
      withUnsafeMutablePointer(to: &sentence5) { pointer in
             _ = pointer.pointee
      }
      if sentence5 != String(cString:[83,0], encoding: .utf8)! {
         sentence5 = "\(sentence5.count * sentence5.count)"
      }
      while (!sentence5.hasSuffix("\(sentence5.count)")) {
         sentence5.append("\(sentence5.count ^ sentence5.count)")
         break
      }
      if sentence5 == String(cString:[52,0], encoding: .utf8)! || sentence5.count <= 4 {
          var commenteru: String! = String(cString: [115,101,97,108,0], encoding: .utf8)!
          var frame_du2: Bool = true
          _ = frame_du2
          var textK: [Any]! = [[String(cString: [113,115,111,114,116,0], encoding: .utf8)!, String(cString: [111,117,116,108,105,101,114,0], encoding: .utf8)!, String(cString: [98,105,116,118,101,99,115,0], encoding: .utf8)!]]
          var q_layerz: Double = 3.0
          var reportZ: String! = String(cString: [99,104,97,110,103,101,104,0], encoding: .utf8)!
         sentence5 = "\((3 << (Swift.min(1, labs((frame_du2 ? 5 : 5))))))"
         commenteru = "\(textK.count % (Swift.max(3, 8)))"
         textK = [reportZ.count]
         q_layerz /= Swift.max((Double(commenteru.count >> (Swift.min(2, labs(Int(q_layerz > 124109304.0 || q_layerz < -124109304.0 ? 94.0 : q_layerz)))))), 1)
         reportZ.append("\(3 >> (Swift.min(3, reportZ.count)))")
      }
      locationW += 1

        let analyzing = AVCaptureSession()
        analyzing.sessionPreset = .high

        guard
            let seed = captureDevice(position: .front),
            let area = try? AVCaptureDeviceInput(device: seed),
            analyzing.canAddInput(area)
        else {
            return
        }

        analyzing.addInput(area)
        videoInput = area

        if
            let i_alpha = AVCaptureDevice.default(for: .audio),
            let snews = try? AVCaptureDeviceInput(device: i_alpha),
            analyzing.canAddInput(snews)
        {
            analyzing.addInput(snews)
            audioInput = snews
        }

        let real = AVCaptureVideoPreviewLayer(session: analyzing)
        real.videoGravity = .resizeAspectFill
        real.frame = view.bounds
        previewContainerView.layer.addSublayer(real)

        self.captureSession = analyzing
        self.previewLayer = real

        DispatchQueue.global(qos: .userInitiated).async {
            analyzing.startRunning()
        }
    }

@discardableResult
 func showMicrophoneAtomicVisualLabel(lanAmount: Double, bubbleTop: Bool, stopPhoto: String!) -> UILabel! {
    var sharedU: String! = String(cString: [98,100,115,0], encoding: .utf8)!
    var elbowW: String! = String(cString: [99,97,108,108,115,0], encoding: .utf8)!
      elbowW = "\(2)"
      sharedU.append("\(3)")
     var emailsPost: UIButton! = UIButton()
     let providerStorage: Double = 80.0
     let requestManager: UIView! = UIView(frame:CGRect(x: 78, y: 199, width: 0, height: 0))
    var confinedArrivalRror:UILabel! = UILabel(frame:CGRect(x: 266, y: 414, width: 0, height: 0))
    emailsPost.alpha = 0.0;
    emailsPost.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: 0)
    emailsPost.frame = CGRect(x: 159, y: 143, width: 0, height: 0)
    emailsPost.setBackgroundImage(UIImage(named:String(cString: [111,98,115,101,114,118,101,114,0], encoding: .utf8)!), for: .normal)
    emailsPost.titleLabel?.font = UIFont.systemFont(ofSize:20)
    emailsPost.setImage(UIImage(named:String(cString: [119,105,110,100,111,119,95,51,110,0], encoding: .utf8)!), for: .normal)
    emailsPost.setTitle("", for: .normal)
    
    requestManager.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: 0)
    requestManager.alpha = 0.6
    requestManager.frame = CGRect(x: 51, y: 137, width: 0, height: 0)
    
    confinedArrivalRror.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: 0)
    confinedArrivalRror.alpha = 0.3
    confinedArrivalRror.frame = CGRect(x: 242, y: 100, width: 0, height: 0)
    confinedArrivalRror.text = ""
    confinedArrivalRror.textColor = UIColor(red:0, green:0, blue:0, alpha: 0)
    confinedArrivalRror.textAlignment = .right
    confinedArrivalRror.font = UIFont.systemFont(ofSize:13)

    
    return confinedArrivalRror

}






    private func updateCameraState() {

         let findassociationUnfreeze: UILabel! = showMicrophoneAtomicVisualLabel(lanAmount:81.0, bubbleTop:true, stopPhoto:String(cString: [100,105,114,97,99,100,115,112,0], encoding: .utf8)!)

      if findassociationUnfreeze != nil {
          self.view.addSubview(findassociationUnfreeze)
          let findassociationUnfreeze_tag = findassociationUnfreeze.tag
      }

_ = findassociationUnfreeze


       var s_playere: String! = String(cString: [97,98,103,114,0], encoding: .utf8)!
   for _ in 0 ..< 1 {
      s_playere.append("\((s_playere == (String(cString:[98,0], encoding: .utf8)!) ? s_playere.count : s_playere.count))")
   }

        cameraButton.setImage(
            UIImage(named: isCameraEnabled ? "videoRoom_camera" : "videoRoom_camera_off"),
            for: .normal
        )
        previewContainerView.isHidden = !isCameraEnabled
    }

@discardableResult
 func verifyDetailDateObservationPadLeading(dimHandle: Int) -> Int {
    var likel: Float = 0.0
   withUnsafeMutablePointer(to: &likel) { pointer in
    
   }
    var http9: Int = 2
    var wnewsT: Int = 3
      likel -= Float(2)
      http9 ^= wnewsT
      wnewsT /= Swift.max(2, http9)
   return http9

}






    private func setupUI() {

         var cdjpegPre: Int = verifyDetailDateObservationPadLeading(dimHandle:55)

      if cdjpegPre != 49 {
             print(cdjpegPre)
      }

withUnsafeMutablePointer(to: &cdjpegPre) { pointer in
    
}


       var photos7: String! = String(cString: [112,114,111,112,115,0], encoding: .utf8)!
   while (photos7 != String(cString:[104,0], encoding: .utf8)!) {
      photos7.append("\(photos7.count * 2)")
      break
   }

        view.addSubview(previewContainerView)
        view.addSubview(backButton)
        view.addSubview(remoteContainerView)
        remoteContainerView.addSubview(remoteAvatarImageView)
        remoteContainerView.addSubview(loadingIndicator)
        view.addSubview(bottomControlView)

        bottomControlView.addSubview(controlStackView)
        controlStackView.addArrangedSubview(reverseButton)
        controlStackView.addArrangedSubview(cameraButton)
        controlStackView.addArrangedSubview(micButton)
        controlStackView.addArrangedSubview(hangUpButton)

        previewContainerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        backButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(6)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.size.equalTo(44)
        }
        remoteContainerView.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-16)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(8)
            make.width.equalTo(110)
            make.height.equalTo(150)
        }
        remoteAvatarImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        loadingIndicator.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        bottomControlView.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(110)
        }
        controlStackView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(24)
            make.top.equalToSuperview().offset(16)
            make.height.equalTo(64)
        }
        [reverseButton, cameraButton, micButton, hangUpButton].forEach { button in
            button.snp.makeConstraints { make in
                make.size.equalTo(64)
            }
        }
    }


    private func stopCamera() {
       var posew: [String: Any]! = [String(cString: [117,110,109,97,115,107,0], encoding: .utf8)!:95, String(cString: [114,101,100,105,114,101,99,116,105,111,110,0], encoding: .utf8)!:16]
       var alertO: Int = 2
       _ = alertO
       var policyG: Double = 3.0
       var handlerF: Bool = false
      withUnsafeMutablePointer(to: &handlerF) { pointer in
    
      }
      for _ in 0 ..< 1 {
         alertO /= Swift.max((alertO % (Swift.max(Int(policyG > 145208425.0 || policyG < -145208425.0 ? 61.0 : policyG), 7))), 5)
      }
         alertO += (Int(policyG > 360810979.0 || policyG < -360810979.0 ? 33.0 : policyG) % 3)
       var pooli: String! = String(cString: [101,109,109,105,110,116,114,105,110,0], encoding: .utf8)!
       var agreementE: String! = String(cString: [108,105,107,101,108,121,0], encoding: .utf8)!
       _ = agreementE
         handlerF = agreementE.count <= 61
       var docC: String! = String(cString: [102,105,114,115,116,112,97,115,115,0], encoding: .utf8)!
       var session2: String! = String(cString: [114,101,99,97,108,99,117,108,97,116,105,111,110,0], encoding: .utf8)!
      withUnsafeMutablePointer(to: &session2) { pointer in
             _ = pointer.pointee
      }
      if docC != session2 {
         session2.append("\((docC == (String(cString:[95,0], encoding: .utf8)!) ? (handlerF ? 4 : 3) : docC.count))")
      }
       var type_5U: Double = 4.0
       var detailsI: Double = 0.0
       _ = detailsI
      if !handlerF {
          var m_widthg: Int = 4
          _ = m_widthg
          var addw: String! = String(cString: [115,109,111,111,116,104,101,100,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &addw) { pointer in
    
         }
         handlerF = session2.count == m_widthg
         addw.append("\((agreementE.count << (Swift.min(1, labs(Int(policyG > 341989274.0 || policyG < -341989274.0 ? 64.0 : policyG))))))")
      }
      for _ in 0 ..< 2 {
         type_5U /= Swift.max(Double(alertO), 2)
      }
         pooli = "\(2 * docC.count)"
         detailsI -= (Double(alertO % (Swift.max(2, (handlerF ? 2 : 3)))))
      posew = ["\(handlerF)": (Int(policyG > 144468784.0 || policyG < -144468784.0 ? 57.0 : policyG) << (Swift.min(4, labs(3))))]

        captureSession?.stopRunning()
        previewLayer?.removeFromSuperlayer()
        captureSession = nil
        previewLayer = nil
        videoInput = nil
        audioInput = nil
    }


    override func viewDidLayoutSubviews() {
       var buildX: Float = 4.0
    var postsI: String! = String(cString: [99,98,115,110,105,100,0], encoding: .utf8)!
    _ = postsI
      buildX /= Swift.max(1, Float(2 & postsI.count))

   for _ in 0 ..< 3 {
      postsI.append("\(postsI.count ^ postsI.count)")
   }
        super.viewDidLayoutSubviews()
        previewLayer?.frame = view.bounds
    }

@discardableResult
 func privacyReuseQueue(managerCover: Bool) -> [Any]! {
    var alreadyT: String! = String(cString: [97,105,109,100,0], encoding: .utf8)!
    var parentp: Double = 3.0
    var closet: [Any]! = [17, 40]
      alreadyT = "\(2 ^ closet.count)"
      parentp += (Double(Int(parentp > 375678826.0 || parentp < -375678826.0 ? 93.0 : parentp) ^ 1))
   return closet

}






    @objc private func micTapped() {

         var aafcPkthdr: [Any]! = privacyReuseQueue(managerCover:false)

      aafcPkthdr.forEach({ (obj) in
          print(obj)
      })
      var aafcPkthdr_len = aafcPkthdr.count

withUnsafeMutablePointer(to: &aafcPkthdr) { pointer in
    
}


       var timesQ: Double = 0.0
   withUnsafeMutablePointer(to: &timesQ) { pointer in
          _ = pointer.pointee
   }
    var fromn: String! = String(cString: [117,114,118,101,115,0], encoding: .utf8)!
       var messageo: Float = 5.0
      withUnsafeMutablePointer(to: &messageo) { pointer in
             _ = pointer.pointee
      }
       var blurP: String! = String(cString: [116,101,115,115,101,108,108,97,116,101,0], encoding: .utf8)!
       var containerm: Double = 4.0
      withUnsafeMutablePointer(to: &containerm) { pointer in
             _ = pointer.pointee
      }
          var feedbacko: Double = 4.0
          _ = feedbacko
          var targets: Int = 3
         blurP = "\((Int(messageo > 67940425.0 || messageo < -67940425.0 ? 36.0 : messageo)))"
         feedbacko /= Swift.max((Double(Int(messageo > 331461392.0 || messageo < -331461392.0 ? 25.0 : messageo))), 3)
         targets -= 3
      while (1.11 < (1.56 + messageo)) {
         blurP = "\(blurP.count)"
         break
      }
      repeat {
         messageo += (Float(Int(messageo > 171457556.0 || messageo < -171457556.0 ? 32.0 : messageo) >> (Swift.min(4, labs(Int(containerm > 216005110.0 || containerm < -216005110.0 ? 69.0 : containerm))))))
         if 3178389.0 == messageo {
            break
         }
      } while (blurP.hasSuffix("\(messageo)")) && (3178389.0 == messageo)
         messageo -= (Float(1 ^ Int(containerm > 44983440.0 || containerm < -44983440.0 ? 38.0 : containerm)))
         messageo /= Swift.max(1, Float(2))
      fromn = "\(3)"

   repeat {
       var rangeo: [Any]! = [22, 81, 86]
       var wristK: Int = 2
       var allf: String! = String(cString: [109,101,115,115,97,103,101,0], encoding: .utf8)!
      while ((rangeo.count ^ 4) <= 2) {
          var loginH: String! = String(cString: [102,105,108,116,101,114,101,100,0], encoding: .utf8)!
          var handleR: String! = String(cString: [101,120,112,111,110,101,110,116,115,0], encoding: .utf8)!
          var layout8: Double = 4.0
          var blacks: String! = String(cString: [100,101,97,99,116,105,118,97,116,105,110,103,0], encoding: .utf8)!
         allf.append("\((Int(layout8 > 385969486.0 || layout8 < -385969486.0 ? 43.0 : layout8)))")
         loginH.append("\(loginH.count)")
         handleR.append("\(loginH.count >> (Swift.min(1, blacks.count)))")
         blacks = "\(wristK)"
         break
      }
          var backgroundD: String! = String(cString: [105,115,100,105,97,99,114,105,116,105,99,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &backgroundD) { pointer in
    
         }
          var applicationp: Double = 0.0
          var esmel: Float = 4.0
         rangeo.append((allf.count | Int(applicationp > 64452697.0 || applicationp < -64452697.0 ? 59.0 : applicationp)))
         backgroundD = "\(wristK)"
         esmel += Float(backgroundD.count | 3)
      while ((allf.count + wristK) > 3) {
         wristK %= Swift.max(1, 3 << (Swift.min(4, allf.count)))
         break
      }
          var data6: String! = String(cString: [109,112,101,103,118,105,100,101,111,101,110,99,100,115,112,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &data6) { pointer in
                _ = pointer.pointee
         }
         allf = "\(data6.count + 3)"
      repeat {
          var default_20: Double = 2.0
          var mediaJ: Double = 0.0
         withUnsafeMutablePointer(to: &mediaJ) { pointer in
    
         }
          var rawF: Bool = true
          var pageJ: Bool = false
         wristK -= 1 + wristK
         default_20 += Double(rangeo.count % (Swift.max(allf.count, 5)))
         mediaJ -= Double(rangeo.count & 1)
         rawF = wristK == 28
         pageJ = allf.count < 11
         if 1370951 == wristK {
            break
         }
      } while (1370951 == wristK) && ((allf.count & wristK) > 2)
          var cellB: Bool = false
          _ = cellB
          var upload0: String! = String(cString: [116,111,111,116,105,112,0], encoding: .utf8)!
          var fallbackf: Float = 5.0
         withUnsafeMutablePointer(to: &fallbackf) { pointer in
    
         }
         rangeo.append((Int(fallbackf > 796370.0 || fallbackf < -796370.0 ? 95.0 : fallbackf) * wristK))
         cellB = !cellB
         upload0.append("\(upload0.count)")
      if 1 >= (3 >> (Swift.min(4, rangeo.count))) || 4 >= (rangeo.count >> (Swift.min(labs(3), 4))) {
         allf.append("\(3)")
      }
         allf = "\(wristK)"
      repeat {
         rangeo = [allf.count + wristK]
         if 1623027 == rangeo.count {
            break
         }
      } while (1623027 == rangeo.count) && (1 > (rangeo.count * allf.count))
      timesQ -= (Double(allf.count ^ Int(timesQ > 57484136.0 || timesQ < -57484136.0 ? 39.0 : timesQ)))
      if 751058.0 == timesQ {
         break
      }
   } while (751058.0 == timesQ) && ((3.16 - timesQ) <= 2.32 || (timesQ - 3.16) <= 4.7)
        isMicEnabled.toggle()
        updateMicState()
    }

@discardableResult
 func mediaProgressLength(coinsSuccess: Double, timesRelations: Int) -> String! {
    var sentenceQ: Double = 2.0
    var anglei: [Any]! = [31.0]
    var coverA: String! = String(cString: [112,95,50,57,0], encoding: .utf8)!
   while (4 >= (anglei.count / 3)) {
      anglei = [(anglei.count << (Swift.min(2, labs(Int(sentenceQ > 314663746.0 || sentenceQ < -314663746.0 ? 73.0 : sentenceQ)))))]
      break
   }
   while (2 >= coverA.count) {
      anglei = [(3 - Int(sentenceQ > 211012235.0 || sentenceQ < -211012235.0 ? 93.0 : sentenceQ))]
      break
   }
   while (2 > (1 ^ coverA.count)) {
       var friends9: Double = 5.0
      withUnsafeMutablePointer(to: &friends9) { pointer in
             _ = pointer.pointee
      }
       var userq: String! = String(cString: [98,117,116,116,111,110,0], encoding: .utf8)!
         friends9 -= (Double(Int(friends9 > 323702423.0 || friends9 < -323702423.0 ? 83.0 : friends9) * 2))
         friends9 += Double(1 << (Swift.min(5, userq.count)))
       var feedbackT: Int = 2
      if 2 < (5 << (Swift.min(4, userq.count))) || 2 < (5 << (Swift.min(1, userq.count))) {
         feedbackT -= (Int(friends9 > 88808074.0 || friends9 < -88808074.0 ? 60.0 : friends9) & userq.count)
      }
          var defaultsQ: String! = String(cString: [98,105,110,115,0], encoding: .utf8)!
          var videol: Float = 4.0
         withUnsafeMutablePointer(to: &videol) { pointer in
    
         }
         userq.append("\(1)")
         defaultsQ = "\(3)"
         videol += Float(defaultsQ.count - 1)
         friends9 /= Swift.max(3, (Double((String(cString:[52,0], encoding: .utf8)!) == userq ? Int(friends9 > 230164811.0 || friends9 < -230164811.0 ? 68.0 : friends9) : userq.count)))
      coverA.append("\((Int(friends9 > 263170495.0 || friends9 < -263170495.0 ? 74.0 : friends9) / 2))")
      break
   }
   return coverA

}






    @objc private func reverseTapped() {

         let k_43Putbitbuffer: String! = mediaProgressLength(coinsSuccess:61.0, timesRelations:4)

      if k_43Putbitbuffer == "login" {
              print(k_43Putbitbuffer)
      }
      let k_43Putbitbuffer_len = k_43Putbitbuffer?.count ?? 0

_ = k_43Putbitbuffer


       var sentenceB: Int = 3
    _ = sentenceB
   for _ in 0 ..< 1 {
       var analyzingp: Double = 1.0
       _ = analyzingp
       var cellt: Double = 1.0
       var followE: String! = String(cString: [114,101,97,100,97,98,108,101,0], encoding: .utf8)!
       _ = followE
       var ratioS: String! = String(cString: [115,117,112,101,114,102,114,97,109,101,0], encoding: .utf8)!
       _ = ratioS
      repeat {
         ratioS = "\((1 / (Swift.max(Int(cellt > 357375104.0 || cellt < -357375104.0 ? 99.0 : cellt), 4))))"
         if ratioS.count == 3785172 {
            break
         }
      } while (ratioS.count == 3785172) && (2.8 < cellt)
      if (followE.count + 3) == 1 {
         followE = "\((ratioS == (String(cString:[119,0], encoding: .utf8)!) ? ratioS.count : followE.count))"
      }
      if ratioS.count == 4 && followE == String(cString:[110,0], encoding: .utf8)! {
          var wristd: String! = String(cString: [117,112,108,111,97,100,0], encoding: .utf8)!
          var durationW: String! = String(cString: [101,114,114,111,114,118,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &durationW) { pointer in
    
         }
         ratioS.append("\(durationW.count ^ 1)")
         wristd = "\(1 & ratioS.count)"
      }
      while (1.81 > (analyzingp - cellt) && (cellt - analyzingp) > 1.81) {
          var esme7: Int = 3
          var u_widthB: Int = 2
         withUnsafeMutablePointer(to: &u_widthB) { pointer in
    
         }
         analyzingp += Double(2)
         esme7 &= 3
         u_widthB ^= (followE == (String(cString:[67,0], encoding: .utf8)!) ? followE.count : esme7)
         break
      }
      repeat {
         ratioS = "\((Int(analyzingp > 160103120.0 || analyzingp < -160103120.0 ? 99.0 : analyzingp)))"
         if ratioS.count == 3559217 {
            break
         }
      } while (ratioS.count == 3559217) && (followE == ratioS)
         followE = "\(2)"
      repeat {
         analyzingp += (Double(Int(analyzingp > 342793738.0 || analyzingp < -342793738.0 ? 80.0 : analyzingp) << (Swift.min(5, labs(3)))))
         if 1093695.0 == analyzingp {
            break
         }
      } while (1093695.0 == analyzingp) && (cellt > 1.47)
      if (Int(analyzingp > 297808954.0 || analyzingp < -297808954.0 ? 89.0 : analyzingp) - ratioS.count) > 1 && (1 - Int(analyzingp > 194620807.0 || analyzingp < -194620807.0 ? 4.0 : analyzingp)) > 3 {
         ratioS.append("\((Int(analyzingp > 391833525.0 || analyzingp < -391833525.0 ? 5.0 : analyzingp)))")
      }
          var gnew_0nz: String! = String(cString: [97,115,115,111,99,108,105,115,116,0], encoding: .utf8)!
         analyzingp -= Double(gnew_0nz.count ^ ratioS.count)
          var action7: String! = String(cString: [98,97,99,107,115,105,100,101,0], encoding: .utf8)!
          var register_gyG: String! = String(cString: [98,112,117,116,115,0], encoding: .utf8)!
         followE = "\((1 * Int(analyzingp > 184370822.0 || analyzingp < -184370822.0 ? 64.0 : analyzingp)))"
         action7 = "\((Int(analyzingp > 160906952.0 || analyzingp < -160906952.0 ? 32.0 : analyzingp) << (Swift.min(4, labs(1)))))"
         register_gyG.append("\(3)")
         ratioS = "\((followE == (String(cString:[77,0], encoding: .utf8)!) ? Int(cellt > 72105386.0 || cellt < -72105386.0 ? 57.0 : cellt) : followE.count))"
      if analyzingp == 5.43 {
          var idsD: Double = 1.0
         withUnsafeMutablePointer(to: &idsD) { pointer in
                _ = pointer.pointee
         }
         analyzingp /= Swift.max((Double(Int(analyzingp > 263723358.0 || analyzingp < -263723358.0 ? 58.0 : analyzingp))), 1)
         idsD /= Swift.max((Double(Int(cellt > 386466412.0 || cellt < -386466412.0 ? 61.0 : cellt) << (Swift.min(1, labs(2))))), 1)
      }
      sentenceB |= sentenceB * 1
   }

        switchCamera()
    }


    private func captureDevice(position: AVCaptureDevice.Position) -> AVCaptureDevice? {
       var destinationU: String! = String(cString: [100,111,115,100,97,116,101,0], encoding: .utf8)!
    _ = destinationU
   repeat {
      destinationU.append("\(destinationU.count >> (Swift.min(labs(2), 3)))")
      if (String(cString:[99,109,100,0], encoding: .utf8)!) == destinationU {
         break
      }
   } while (destinationU.count >= 2) && ((String(cString:[99,109,100,0], encoding: .utf8)!) == destinationU)

return         AVCaptureDevice.DiscoverySession(
            deviceTypes: [.builtInWideAngleCamera],
            mediaType: .video,
            position: position
        ).devices.first
    }

@discardableResult
 func navigationPolicyInteractionImageView(release_9sLiked: Double, componentsEnabled: String!, analyzerCheck: Float) -> UIImageView! {
    var alreadyV: [Any]! = [51, 100]
    _ = alreadyV
    var reverseq: Double = 0.0
    _ = reverseq
   if (Int(reverseq > 264716380.0 || reverseq < -264716380.0 ? 92.0 : reverseq)) >= alreadyV.count {
      alreadyV.append(2 >> (Swift.min(4, alreadyV.count)))
   }
      reverseq /= Swift.max(Double(alreadyV.count), 1)
     let personUpdates: UIImageView! = UIImageView()
     let description_m2Row: Int = 93
     let fansList: Float = 95.0
    var jrevdctVtab = UIImageView(frame:CGRect(x: 265, y: 117, width: 0, height: 0))
    jrevdctVtab.frame = CGRect(x: 20, y: 190, width: 0, height: 0)
    jrevdctVtab.alpha = 0.4;
    jrevdctVtab.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: 0)
    jrevdctVtab.image = UIImage(named:String(cString: [104,101,97,100,101,114,0], encoding: .utf8)!)
    jrevdctVtab.contentMode = .scaleAspectFit
    jrevdctVtab.animationRepeatCount = 1
    personUpdates.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: 0)
    personUpdates.alpha = 0.1
    personUpdates.frame = CGRect(x: 36, y: 50, width: 0, height: 0)
    personUpdates.image = UIImage(named:String(cString: [105,110,116,101,114,97,99,116,105,111,110,115,0], encoding: .utf8)!)
    personUpdates.contentMode = .scaleAspectFit
    personUpdates.animationRepeatCount = 0
    

    
    return jrevdctVtab

}






    override func viewDidLoad() {

         let locatedTilex: UIImageView! = navigationPolicyInteractionImageView(release_9sLiked:16.0, componentsEnabled:String(cString: [114,117,101,0], encoding: .utf8)!, analyzerCheck:33.0)

      if locatedTilex != nil {
          self.view.addSubview(locatedTilex)
          let locatedTilex_tag = locatedTilex.tag
      }
      else {
          print("locatedTilex is nil")      }

_ = locatedTilex


       var buy3: String! = String(cString: [99,111,109,112,114,101,115,115,0], encoding: .utf8)!
    var mockl: Double = 1.0
    _ = mockl
      mockl += Double(2 ^ buy3.count)

      buy3 = "\(3)"
        super.viewDidLoad()

        backgroundView.isHidden = true
        view.backgroundColor = .black

        setupUI()
        setupActions()
        configureRemoteUser()
        setupCamera()
        
        DV_HistoryHistory.shared.request(isShow: false) { _ in
            
        }
    }

@discardableResult
static func beginDirectionSpread(tapData: [Any]!, scorePlayer: Bool, stopDate: String!) -> Int {
    var cancelU: String! = String(cString: [116,119,111,108,97,109,101,0], encoding: .utf8)!
    _ = cancelU
    var clearX: Int = 2
    var selectionh: Int = 3
      selectionh &= (cancelU == (String(cString:[50,0], encoding: .utf8)!) ? selectionh : cancelU.count)
       var keyI: String! = String(cString: [105,110,116,101,114,97,99,116,105,111,110,0], encoding: .utf8)!
         keyI = "\(keyI.count)"
         keyI = "\(keyI.count)"
          var emptyz: Double = 3.0
          var currentf: String! = String(cString: [99,112,117,117,115,101,100,0], encoding: .utf8)!
          var historyz: Double = 2.0
         withUnsafeMutablePointer(to: &historyz) { pointer in
                _ = pointer.pointee
         }
         keyI.append("\((Int(historyz > 100940732.0 || historyz < -100940732.0 ? 52.0 : historyz) % (Swift.max(9, Int(emptyz > 363787437.0 || emptyz < -363787437.0 ? 46.0 : emptyz)))))")
         currentf = "\(1 >> (Swift.min(5, keyI.count)))"
      cancelU.append("\(3 | cancelU.count)")
   repeat {
      cancelU.append("\(1 >> (Swift.min(2, cancelU.count)))")
      if 3829932 == cancelU.count {
         break
      }
   } while ((clearX | cancelU.count) > 2 || 1 > (2 | clearX)) && (3829932 == cancelU.count)
   return clearX

}






    static func open(from viewController: UIViewController, user: DV_PersonInfo) {

         let meltCentrally: Int = beginDirectionSpread(tapData:[String(cString: [102,101,116,99,104,101,114,115,0], encoding: .utf8)!, String(cString: [116,104,114,101,97,100,115,0], encoding: .utf8)!, String(cString: [102,114,97,109,101,115,121,110,99,0], encoding: .utf8)!], scorePlayer:false, stopDate:String(cString: [107,101,121,119,111,114,100,0], encoding: .utf8)!)

      if meltCentrally >= 16 {
             print(meltCentrally)
      }

_ = meltCentrally


       var formatterR: String! = String(cString: [97,109,102,101,110,99,0], encoding: .utf8)!
      formatterR = "\(formatterR.count - formatterR.count)"

        FS_MediaPermission.requestVideoCallPermissions(from: viewController) { granted in
            guard granted else { return }
            viewController.navigationController?.pushViewController(
                DV_VideoController(user: user),
                animated: true
            )
        }
    }

@discardableResult
 func automaticLazyIdentityDeadline(httpWrist: Int) -> String! {
    var signi: String! = String(cString: [102,105,110,97,108,100,0], encoding: .utf8)!
    var emailsl: String! = String(cString: [115,117,98,116,105,116,108,101,0], encoding: .utf8)!
    var rangeX: String! = String(cString: [100,97,109,112,105,110,103,0], encoding: .utf8)!
       var modalz: String! = String(cString: [98,111,114,100,101,114,0], encoding: .utf8)!
       _ = modalz
      while (modalz.count <= 3) {
          var loadingY: [String: Any]! = [String(cString: [114,101,110,116,97,108,0], encoding: .utf8)!:95, String(cString: [115,99,116,112,99,111,110,110,0], encoding: .utf8)!:93, String(cString: [116,109,109,98,110,0], encoding: .utf8)!:42]
          _ = loadingY
          var hintO: Double = 0.0
          var horizontal5: String! = String(cString: [98,98,117,102,0], encoding: .utf8)!
          var directoryN: Double = 3.0
         modalz.append("\(2 + loadingY.keys.count)")
         hintO -= (Double(Int(directoryN > 171146345.0 || directoryN < -171146345.0 ? 53.0 : directoryN) / (Swift.max(2, Int(hintO > 5409260.0 || hintO < -5409260.0 ? 91.0 : hintO)))))
         horizontal5.append("\((modalz == (String(cString:[117,0], encoding: .utf8)!) ? loadingY.keys.count : modalz.count))")
         directoryN -= (Double(modalz == (String(cString:[83,0], encoding: .utf8)!) ? loadingY.count : modalz.count))
         break
      }
          var rowh: String! = String(cString: [103,117,101,115,115,0], encoding: .utf8)!
          _ = rowh
          var jointF: Double = 4.0
         modalz.append("\(2)")
         rowh.append("\((Int(jointF > 145298311.0 || jointF < -145298311.0 ? 80.0 : jointF)))")
         jointF -= Double(rowh.count + modalz.count)
         modalz.append("\(2)")
      emailsl = "\(1 >> (Swift.min(2, emailsl.count)))"
      signi = "\(1)"
      emailsl = "\((emailsl == (String(cString:[76,0], encoding: .utf8)!) ? signi.count : emailsl.count))"
   while (!rangeX.hasPrefix("\(rangeX.count)")) {
       var analyzerB: Double = 2.0
       var keysX: Float = 1.0
       _ = keysX
       var authT: Double = 4.0
       var home3: [Any]! = [String(cString: [119,104,105,108,101,0], encoding: .utf8)!, String(cString: [110,99,104,117,110,107,0], encoding: .utf8)!, String(cString: [99,104,115,99,97,108,101,0], encoding: .utf8)!]
       _ = home3
       var deviceS: Float = 5.0
      while (3.50 > (keysX / (Swift.max(9, Float(analyzerB))))) {
         analyzerB += Double(home3.count)
         break
      }
         keysX /= Swift.max(1, Float(3))
         deviceS += (Float(3 + Int(analyzerB > 48895793.0 || analyzerB < -48895793.0 ? 18.0 : analyzerB)))
      repeat {
          var appearancey: String! = String(cString: [112,114,101,118,105,101,119,0], encoding: .utf8)!
          _ = appearancey
          var momentw: Int = 0
          _ = momentw
          var taskW: Double = 4.0
          var e_layerJ: Float = 0.0
         authT += (Double(Int(analyzerB > 230738549.0 || analyzerB < -230738549.0 ? 69.0 : analyzerB) & Int(authT > 254424771.0 || authT < -254424771.0 ? 26.0 : authT)))
         appearancey = "\((Int(taskW > 360212063.0 || taskW < -360212063.0 ? 43.0 : taskW) * 2))"
         momentw /= Swift.max((Int(e_layerJ > 312051306.0 || e_layerJ < -312051306.0 ? 10.0 : e_layerJ) - 2), 5)
         taskW /= Swift.max(3, Double(1 ^ momentw))
         e_layerJ += Float(3)
         if 3839711.0 == authT {
            break
         }
      } while (3.23 > (authT - 4.42) && 4.42 > (analyzerB - authT)) && (3839711.0 == authT)
      while ((keysX - Float(home3.count)) < 2.35 || (keysX - 2.35) < 1.27) {
          var datau: String! = String(cString: [102,111,110,116,115,0], encoding: .utf8)!
          var videof: String! = String(cString: [114,101,97,100,108,105,110,101,0], encoding: .utf8)!
          var interval_uqQ: String! = String(cString: [109,111,100,101,114,110,0], encoding: .utf8)!
          var requestI: [Any]! = [10, 36, 87]
          var nameL: String! = String(cString: [101,95,51,48,95,100,101,115,99,114,105,98,101,0], encoding: .utf8)!
          _ = nameL
         home3 = [datau.count + 3]
         videof = "\(home3.count)"
         interval_uqQ.append("\(videof.count)")
         requestI = [requestI.count * 3]
         nameL.append("\(home3.count)")
         break
      }
         home3 = [(Int(deviceS > 190495086.0 || deviceS < -190495086.0 ? 2.0 : deviceS) % 2)]
         home3.append((Int(authT > 72799791.0 || authT < -72799791.0 ? 100.0 : authT) | 1))
      for _ in 0 ..< 1 {
         analyzerB += (Double(Int(analyzerB > 150034560.0 || analyzerB < -150034560.0 ? 4.0 : analyzerB) / (Swift.max(home3.count, 10))))
      }
         deviceS -= (Float(Int(keysX > 239970179.0 || keysX < -239970179.0 ? 57.0 : keysX) / 1))
      if !home3.contains { $0 as? Double == authT } {
         home3.append((Int(authT > 5582532.0 || authT < -5582532.0 ? 15.0 : authT) + Int(keysX > 380901755.0 || keysX < -380901755.0 ? 19.0 : keysX)))
      }
      if 4.97 <= analyzerB {
         deviceS *= Float(3 << (Swift.min(5, home3.count)))
      }
      while ((Int(deviceS > 146896551.0 || deviceS < -146896551.0 ? 6.0 : deviceS)) >= home3.count) {
          var leftv: Float = 3.0
         withUnsafeMutablePointer(to: &leftv) { pointer in
    
         }
         home3 = [2]
         leftv /= Swift.max(2, (Float(Int(analyzerB > 282349986.0 || analyzerB < -282349986.0 ? 13.0 : analyzerB) << (Swift.min(3, labs(2))))))
         break
      }
       var followerG: String! = String(cString: [97,110,111,116,104,101,114,0], encoding: .utf8)!
       var controllere: String! = String(cString: [109,117,108,116,105,115,116,101,112,0], encoding: .utf8)!
         analyzerB -= (Double(2 | Int(authT > 78741038.0 || authT < -78741038.0 ? 76.0 : authT)))
      if followerG.count < 3 {
         deviceS -= (Float((String(cString:[83,0], encoding: .utf8)!) == followerG ? home3.count : followerG.count))
      }
         controllere.append("\((Int(keysX > 100637188.0 || keysX < -100637188.0 ? 67.0 : keysX) - controllere.count))")
      rangeX.append("\(home3.count ^ 3)")
      break
   }
   return signi

}






    private func setupActions() {

         let curtainGetsigctxno: String! = automaticLazyIdentityDeadline(httpWrist:67)

      print(curtainGetsigctxno)
      let curtainGetsigctxno_len = curtainGetsigctxno?.count ?? 0

_ = curtainGetsigctxno


       var apple5: Double = 2.0
      apple5 += (Double(Int(apple5 > 77300528.0 || apple5 < -77300528.0 ? 15.0 : apple5)))

        backButton.addTarget(self, action: #selector(clickBackButton), for: .touchUpInside)
        reverseButton.addTarget(self, action: #selector(reverseTapped), for: .touchUpInside)
        cameraButton.addTarget(self, action: #selector(cameraTapped), for: .touchUpInside)
        micButton.addTarget(self, action: #selector(micTapped), for: .touchUpInside)
        hangUpButton.addTarget(self, action: #selector(hangUpTapped), for: .touchUpInside)
    }

@discardableResult
 func centerLowRunString() -> Int {
    var remotey: String! = String(cString: [99,111,112,121,98,97,99,107,0], encoding: .utf8)!
    var applicationQ: Float = 4.0
    _ = applicationQ
    var costH: Int = 4
      applicationQ -= (Float(Int(applicationQ > 242140760.0 || applicationQ < -242140760.0 ? 27.0 : applicationQ)))
   for _ in 0 ..< 2 {
      remotey = "\(remotey.count % (Swift.max(3, 7)))"
   }
   repeat {
      applicationQ /= Swift.max(4, Float(1))
      if applicationQ == 2780327.0 {
         break
      }
   } while (4.25 <= (applicationQ / 2.12) || 5 <= (costH % (Swift.max(4, 10)))) && (applicationQ == 2780327.0)
   return costH

}






    private func updateMicState() {

         let pixmftsPositioning: Int = centerLowRunString()

      print(pixmftsPositioning)

_ = pixmftsPositioning


       var detectv: Float = 2.0
    var tnews3: String! = String(cString: [115,117,98,114,101,115,117,108,116,115,0], encoding: .utf8)!
    _ = tnews3
   for _ in 0 ..< 3 {
      tnews3.append("\((tnews3 == (String(cString:[88,0], encoding: .utf8)!) ? Int(detectv > 340341946.0 || detectv < -340341946.0 ? 76.0 : detectv) : tnews3.count))")
   }

      tnews3.append("\(((String(cString:[49,0], encoding: .utf8)!) == tnews3 ? tnews3.count : Int(detectv > 211080660.0 || detectv < -211080660.0 ? 87.0 : detectv)))")
        micButton.setImage(
            UIImage(named: isMicEnabled ? "videoRoom_mic" : "videoRoom_mic_off"),
            for: .normal
        )
        captureSession?.connections.forEach { connection in
            guard connection.inputPorts.contains(where: { $0.mediaType == .audio }) else { return }
            connection.isEnabled = isMicEnabled
        }
    }


    @objc private func cameraTapped() {
       var autha: [String: Any]! = [String(cString: [113,105,97,110,0], encoding: .utf8)!:99, String(cString: [97,116,116,114,97,99,116,111,114,0], encoding: .utf8)!:69]
    _ = autha
      autha["\(autha.keys.count)"] = autha.keys.count * autha.values.count

        isCameraEnabled.toggle()
        updateCameraState()
    }

@discardableResult
 func hangSpreadPathButton(timeoutPublish: Float, detailsProfession: String!) -> UIButton! {
    var description_wd8: Int = 4
    var register_zv: String! = String(cString: [108,111,116,116,105,101,108,111,97,100,101,114,0], encoding: .utf8)!
   withUnsafeMutablePointer(to: &register_zv) { pointer in
    
   }
   while ((4 & register_zv.count) > 2) {
      description_wd8 >>= Swift.min(labs(register_zv.count << (Swift.min(1, labs(description_wd8)))), 2)
      break
   }
      description_wd8 /= Swift.max(((String(cString:[88,0], encoding: .utf8)!) == register_zv ? register_zv.count : description_wd8), 2)
     let authorizationView: UIView! = UIView(frame:CGRect.zero)
     var errorPrefix_x: Bool = false
     var confirmationPlaceholder: UILabel! = UILabel()
    var setupintrareconSuppress:UIButton! = UIButton()
    setupintrareconSuppress.titleLabel?.font = UIFont.systemFont(ofSize:20)
    setupintrareconSuppress.setImage(UIImage(named:String(cString: [100,111,116,0], encoding: .utf8)!), for: .normal)
    setupintrareconSuppress.setTitle("", for: .normal)
    setupintrareconSuppress.setBackgroundImage(UIImage(named:String(cString: [102,111,108,108,111,119,101,100,0], encoding: .utf8)!), for: .normal)
    setupintrareconSuppress.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: 1)
    setupintrareconSuppress.alpha = 0.7
    setupintrareconSuppress.frame = CGRect(x: 30, y: 302, width: 0, height: 0)
    authorizationView.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: 0)
    authorizationView.alpha = 0.2
    authorizationView.frame = CGRect(x: 12, y: 279, width: 0, height: 0)
    
    confirmationPlaceholder.alpha = 1.0;
    confirmationPlaceholder.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: 0)
    confirmationPlaceholder.frame = CGRect(x: 47, y: 79, width: 0, height: 0)
    confirmationPlaceholder.text = ""
    confirmationPlaceholder.textColor = UIColor(red:0, green:0, blue:0, alpha: 0)
    confirmationPlaceholder.textAlignment = .right
    confirmationPlaceholder.font = UIFont.systemFont(ofSize:17)
    

    
    return setupintrareconSuppress

}






    private func switchCamera() {

         let deinitAacpsy: UIButton! = hangSpreadPathButton(timeoutPublish:0.0, detailsProfession:String(cString: [118,100,101,99,0], encoding: .utf8)!)

      if deinitAacpsy != nil {
          let deinitAacpsy_tag = deinitAacpsy.tag
          self.view.addSubview(deinitAacpsy)
      }

_ = deinitAacpsy


       var scrollG: [String: Any]! = [String(cString: [114,101,118,111,107,101,0], encoding: .utf8)!:83, String(cString: [115,99,114,111,108,108,101,114,0], encoding: .utf8)!:6]
    _ = scrollG
      scrollG = ["\(scrollG.count)": scrollG.count | scrollG.count]

        guard let session = captureSession, let currentInput = videoInput else { return }

        let selected: AVCaptureDevice.Position = isUsingFrontCamera ? .back : .front
        guard
            let age = captureDevice(position: selected),
            let own = try? AVCaptureDeviceInput(device: age)
        else {
            return
        }

        session.beginConfiguration()
        session.removeInput(currentInput)
        if session.canAddInput(own) {
            session.addInput(own)
            videoInput = own
            isUsingFrontCamera.toggle()
        } else {
            session.addInput(currentInput)
        }
        session.commitConfiguration()
    }

@discardableResult
 func alreadyTopRealTrackFinite() -> String! {
    var interactionB: [String: Any]! = [String(cString: [102,117,110,99,116,105,111,110,115,0], encoding: .utf8)!:24, String(cString: [97,114,107,101,114,0], encoding: .utf8)!:69]
   withUnsafeMutablePointer(to: &interactionB) { pointer in
          _ = pointer.pointee
   }
    var empty3: Int = 3
    _ = empty3
    var storede: String! = String(cString: [101,108,97,112,115,101,100,0], encoding: .utf8)!
      empty3 &= 3 & storede.count
   repeat {
      storede = "\(interactionB.count ^ 3)"
      if storede == (String(cString:[119,110,108,108,103,53,0], encoding: .utf8)!) {
         break
      }
   } while (storede == (String(cString:[119,110,108,108,103,53,0], encoding: .utf8)!)) && (storede.hasPrefix("\(empty3)"))
      empty3 ^= 3 / (Swift.max(5, interactionB.keys.count))
   return storede

}






    @objc private func hangUpTapped() {

         let amplitudeTension: String! = alreadyTopRealTrackFinite()

      print(amplitudeTension)
      let amplitudeTension_len = amplitudeTension?.count ?? 0

_ = amplitudeTension


       var summaryV: String! = String(cString: [100,101,98,108,111,99,107,105,110,103,0], encoding: .utf8)!
      summaryV.append("\(summaryV.count)")

        navigationController?.popViewController(animated: true)
    }


    private func configureRemoteUser() {
       var httpj: String! = String(cString: [114,101,109,117,120,101,114,0], encoding: .utf8)!
      httpj = "\(httpj.count / (Swift.max(8, httpj.count)))"

        remoteAvatarImageView.image = DV_EventsEvents.avatarImage(for: user.avatarImageName)
            ?? UIImage(named: user.avatarImageName)
        loadingIndicator.startAnimating()
    }

@discardableResult
 func captureControlSentenceEdit(identifierAnalyzer: String!) -> Double {
    var authorizationK: [String: Any]! = [String(cString: [115,101,116,97,99,116,105,118,101,107,101,121,0], encoding: .utf8)!:63, String(cString: [100,101,103,114,101,101,0], encoding: .utf8)!:73]
   withUnsafeMutablePointer(to: &authorizationK) { pointer in
          _ = pointer.pointee
   }
    var textS: String! = String(cString: [101,120,99,108,117,100,101,0], encoding: .utf8)!
    _ = textS
      textS.append("\(authorizationK.count - textS.count)")
      textS = "\((textS == (String(cString:[70,0], encoding: .utf8)!) ? textS.count : authorizationK.keys.count))"
     var originAvatars: String! = String(cString: [99,108,111,117,100,102,108,97,114,101,0], encoding: .utf8)!
    var formatsFeatured:Double = 0

    return formatsFeatured

}






    @objc private func clickBackButton() {

         let faviconRacing: Double = captureControlSentenceEdit(identifierAnalyzer:String(cString: [115,119,97,112,112,101,114,0], encoding: .utf8)!)

      print(faviconRacing)

_ = faviconRacing


       var selI: Bool = true
      selI = (!selI ? !selI : !selI)

        navigationController?.popViewController(animated: true)
    }


    override func viewWillDisappear(_ animated: Bool) {
       var prefix_iD: String! = String(cString: [99,99,105,116,116,0], encoding: .utf8)!
    var analyzeru: [String: Any]! = [String(cString: [100,105,118,109,111,100,0], encoding: .utf8)!:6, String(cString: [101,110,97,98,108,101,115,0], encoding: .utf8)!:45, String(cString: [115,112,111,110,115,111,114,101,100,0], encoding: .utf8)!:13]
   withUnsafeMutablePointer(to: &analyzeru) { pointer in
          _ = pointer.pointee
   }
      prefix_iD = "\(analyzeru.count)"

   while (analyzeru.count >= 5) {
      analyzeru["\(analyzeru.values.count)"] = analyzeru.count * analyzeru.count
      break
   }
        super.viewWillDisappear(animated)
        if isMovingFromParent || isBeingDismissed {
            stopCamera()
        }
    }

    private let previewContainerView: UIView = {
       var scroll8: String! = String(cString: [108,111,103,105,99,97,108,0], encoding: .utf8)!
    _ = scroll8
      scroll8.append("\((scroll8 == (String(cString:[79,0], encoding: .utf8)!) ? scroll8.count : scroll8.count))")

        let view = UIView()
        view.backgroundColor = .black
        return view
    }()

    private let backButton: UIButton = {
       var historyR: Int = 5
    var marcelineR: String! = String(cString: [120,99,101,112,116,105,111,110,0], encoding: .utf8)!
      marcelineR.append("\(historyR)")

        let button = UIButton(type: .custom)
   if 5 > (historyR + 2) || (historyR + marcelineR.count) > 2 {
       var prefix_xdn: [Any]! = [15, 57, 23]
       _ = prefix_xdn
       var analysisv: Float = 4.0
       _ = analysisv
       var updated1: String! = String(cString: [117,105,100,0], encoding: .utf8)!
       var existingt: String! = String(cString: [115,111,108,105,100,105,116,121,0], encoding: .utf8)!
       _ = existingt
       var persistedE: Double = 3.0
       _ = persistedE
         updated1 = "\(prefix_xdn.count & updated1.count)"
      repeat {
         existingt.append("\((Int(persistedE > 358452046.0 || persistedE < -358452046.0 ? 43.0 : persistedE) | Int(analysisv > 349929211.0 || analysisv < -349929211.0 ? 64.0 : analysisv)))")
         if existingt == (String(cString:[95,51,116,119,55,104,56,108,97,0], encoding: .utf8)!) {
            break
         }
      } while (existingt == (String(cString:[95,51,116,119,55,104,56,108,97,0], encoding: .utf8)!)) && ((Float(existingt.count) * analysisv) > 4.28 && 4.28 > (analysisv * Float(existingt.count)))
         prefix_xdn = [3 << (Swift.min(3, updated1.count))]
         persistedE -= Double(existingt.count - prefix_xdn.count)
         prefix_xdn.append((Int(persistedE > 261464902.0 || persistedE < -261464902.0 ? 89.0 : persistedE)))
      for _ in 0 ..< 1 {
          var avatarsD: [String: Any]! = [String(cString: [114,101,99,101,110,116,108,121,0], encoding: .utf8)!:18, String(cString: [112,116,104,114,101,97,100,0], encoding: .utf8)!:40, String(cString: [110,111,110,98,0], encoding: .utf8)!:21]
          var buildT: String! = String(cString: [104,97,100,97,109,97,114,100,120,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &buildT) { pointer in
                _ = pointer.pointee
         }
          var urlA: Double = 5.0
          var avatarx: String! = String(cString: [116,114,97,100,105,116,105,111,110,97,108,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &avatarx) { pointer in
                _ = pointer.pointee
         }
         analysisv /= Swift.max(Float(2), 4)
         avatarsD[existingt] = (Int(persistedE > 166305195.0 || persistedE < -166305195.0 ? 62.0 : persistedE) * existingt.count)
         buildT = "\((existingt == (String(cString:[51,0], encoding: .utf8)!) ? prefix_xdn.count : existingt.count))"
         urlA += Double(avatarsD.keys.count << (Swift.min(labs(3), 5)))
         avatarx.append("\((existingt == (String(cString:[50,0], encoding: .utf8)!) ? existingt.count : Int(urlA > 154866522.0 || urlA < -154866522.0 ? 29.0 : urlA)))")
      }
         updated1 = "\(existingt.count)"
      while (5 > (prefix_xdn.count * updated1.count) || (5 * updated1.count) > 4) {
          var description_wC: String! = String(cString: [118,112,120,101,110,99,0], encoding: .utf8)!
          var allG: Bool = true
         withUnsafeMutablePointer(to: &allG) { pointer in
                _ = pointer.pointee
         }
          var dismissk: String! = String(cString: [116,116,97,101,110,99,100,115,112,0], encoding: .utf8)!
          var videos_: String! = String(cString: [104,105,116,115,0], encoding: .utf8)!
         prefix_xdn.append(((String(cString:[71,0], encoding: .utf8)!) == videos_ ? (allG ? 1 : 4) : videos_.count))
         description_wC.append("\((description_wC == (String(cString:[67,0], encoding: .utf8)!) ? Int(persistedE > 315791566.0 || persistedE < -315791566.0 ? 70.0 : persistedE) : description_wC.count))")
         dismissk = "\((Int(persistedE > 345925908.0 || persistedE < -345925908.0 ? 13.0 : persistedE)))"
         break
      }
          var p_heightF: Bool = true
         prefix_xdn.append((Int(persistedE > 145239951.0 || persistedE < -145239951.0 ? 30.0 : persistedE) * 1))
         p_heightF = (Double(prefix_xdn.count) / (Swift.max(10, persistedE))) >= 62.27
      while (existingt != updated1) {
         updated1.append("\((Int(persistedE > 230865347.0 || persistedE < -230865347.0 ? 79.0 : persistedE)))")
         break
      }
          var authorization5: Float = 3.0
          var attributedY: Bool = true
         persistedE += Double(prefix_xdn.count)
         authorization5 -= (Float(Int(analysisv > 315809533.0 || analysisv < -315809533.0 ? 80.0 : analysisv) ^ 2))
         attributedY = prefix_xdn.count > 19
      repeat {
          var relativeK: [Any]! = [String(cString: [108,111,99,97,108,105,122,97,116,105,111,110,0], encoding: .utf8)!]
          var fieldn: String! = String(cString: [112,105,120,101,108,115,120,0], encoding: .utf8)!
         updated1.append("\((Int(persistedE > 240142319.0 || persistedE < -240142319.0 ? 87.0 : persistedE) & updated1.count))")
         relativeK.append((Int(analysisv > 60470963.0 || analysisv < -60470963.0 ? 22.0 : analysisv)))
         fieldn.append("\(existingt.count << (Swift.min(labs(3), 2)))")
         if updated1 == (String(cString:[55,110,114,97,57,115,0], encoding: .utf8)!) {
            break
         }
      } while (updated1 == (String(cString:[55,110,114,97,57,115,0], encoding: .utf8)!)) && (2 <= (5 % (Swift.max(9, updated1.count))) || (updated1.count * Int(persistedE > 104604413.0 || persistedE < -104604413.0 ? 90.0 : persistedE)) <= 5)
         updated1 = "\(updated1.count)"
         updated1 = "\(updated1.count ^ existingt.count)"
      while (existingt.contains("\(updated1.count)")) {
         updated1.append("\(3)")
         break
      }
      marcelineR.append("\((Int(analysisv > 299055052.0 || analysisv < -299055052.0 ? 57.0 : analysisv) - 2))")
   }
        button.setImage(UIImage(named: "common_back"), for: .normal)
        return button
    }()

    private let remoteContainerView: UIView = {
       var fittingD: Double = 0.0
   if 1.88 >= (Double(5 - Int(fittingD))) {
      fittingD /= Swift.max(5, (Double(Int(fittingD > 303673733.0 || fittingD < -303673733.0 ? 10.0 : fittingD))))
   }

        let view = UIView()
        view.backgroundColor = UIColor(white: 0.15, alpha: 1)
        view.layer.cornerRadius = 16
        view.clipsToBounds = true
        return view
    }()

    private let remoteAvatarImageView: UIImageView = {
       var observerX: String! = String(cString: [102,119,104,116,120,0], encoding: .utf8)!
       var postV: Double = 2.0
       var camerai: String! = String(cString: [99,111,111,107,0], encoding: .utf8)!
       _ = camerai
       var analyzeZ: Float = 2.0
      if camerai.count <= 5 {
         camerai = "\(2)"
      }
         postV -= Double(camerai.count)
      for _ in 0 ..< 2 {
         postV /= Swift.max(Double(3 >> (Swift.min(2, camerai.count))), 4)
      }
         analyzeZ += (Float(Int(postV > 60223093.0 || postV < -60223093.0 ? 22.0 : postV)))
          var mutuallyE: String! = String(cString: [97,110,103,117,108,97,114,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &mutuallyE) { pointer in
                _ = pointer.pointee
         }
          var completionF: String! = String(cString: [114,101,115,104,97,112,101,0], encoding: .utf8)!
         camerai.append("\(camerai.count)")
         mutuallyE.append("\(1)")
         completionF = "\((Int(analyzeZ > 355696446.0 || analyzeZ < -355696446.0 ? 22.0 : analyzeZ) / (Swift.max(6, completionF.count))))"
          var visiblev: String! = String(cString: [99,114,97,115,104,108,121,116,105,99,115,0], encoding: .utf8)!
         camerai.append("\((camerai == (String(cString:[86,0], encoding: .utf8)!) ? Int(postV > 117271370.0 || postV < -117271370.0 ? 78.0 : postV) : camerai.count))")
         visiblev.append("\((visiblev.count & Int(postV > 93015037.0 || postV < -93015037.0 ? 27.0 : postV)))")
          var durationU: String! = String(cString: [108,115,112,105,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &durationU) { pointer in
                _ = pointer.pointee
         }
         postV -= (Double(Int(postV > 186965111.0 || postV < -186965111.0 ? 14.0 : postV) >> (Swift.min(labs(1), 2))))
         durationU = "\(camerai.count)"
         postV -= Double(3)
         analyzeZ += (Float(Int(postV > 63130625.0 || postV < -63130625.0 ? 36.0 : postV) | camerai.count))
      observerX = "\(camerai.count - observerX.count)"

        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()

    private let loadingIndicator: UIActivityIndicatorView = {
       var bubbleS: [String: Any]! = [String(cString: [100,97,117,98,101,99,104,105,101,115,0], encoding: .utf8)!:[String(cString: [99,111,117,110,116,114,121,0], encoding: .utf8)!:true]]
   withUnsafeMutablePointer(to: &bubbleS) { pointer in
    
   }
    var response_: Float = 3.0
   for _ in 0 ..< 3 {
       var detectedJ: Double = 2.0
       _ = detectedJ
       var friend_u3: [Any]! = [String(cString: [112,114,105,109,101,115,0], encoding: .utf8)!, String(cString: [99,111,111,114,100,105,110,97,116,105,111,110,0], encoding: .utf8)!, String(cString: [112,111,115,108,105,115,116,115,0], encoding: .utf8)!]
       var prefix_z9: Float = 5.0
       var buttonsn: Bool = false
         friend_u3.append((Int(detectedJ > 337955473.0 || detectedJ < -337955473.0 ? 80.0 : detectedJ) ^ 3))
         detectedJ += (Double(Int(detectedJ > 291185808.0 || detectedJ < -291185808.0 ? 64.0 : detectedJ) ^ 3))
      while (3.32 < detectedJ) {
         detectedJ += (Double(Int(detectedJ > 224561522.0 || detectedJ < -224561522.0 ? 73.0 : detectedJ) << (Swift.min(1, labs(Int(prefix_z9 > 178862670.0 || prefix_z9 < -178862670.0 ? 27.0 : prefix_z9))))))
         break
      }
         prefix_z9 -= (Float(Int(prefix_z9 > 392639033.0 || prefix_z9 < -392639033.0 ? 12.0 : prefix_z9)))
      for _ in 0 ..< 3 {
         buttonsn = friend_u3.count < 32
      }
      if 5 <= (4 / (Swift.max(7, friend_u3.count))) && !buttonsn {
         buttonsn = !buttonsn
      }
      repeat {
          var introductionS: Bool = false
          var topt: String! = String(cString: [115,108,111,119,100,111,119,110,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &topt) { pointer in
                _ = pointer.pointee
         }
         friend_u3 = [2 | topt.count]
         introductionS = 7.13 < prefix_z9
         if 916566 == friend_u3.count {
            break
         }
      } while ((detectedJ + 4.13) < 2.53 || (friend_u3.count / (Swift.max(3, 4))) < 3) && (916566 == friend_u3.count)
      repeat {
          var a_imageu: [String: Any]! = [String(cString: [118,97,108,105,100,97,116,101,0], encoding: .utf8)!:String(cString: [105,105,110,116,0], encoding: .utf8)!, String(cString: [97,103,101,110,116,0], encoding: .utf8)!:String(cString: [97,117,120,105,108,105,97,114,121,0], encoding: .utf8)!]
         prefix_z9 -= Float(friend_u3.count / (Swift.max(2, 8)))
         a_imageu = ["\(prefix_z9)": (Int(prefix_z9 > 193595243.0 || prefix_z9 < -193595243.0 ? 66.0 : prefix_z9) >> (Swift.min(5, labs((buttonsn ? 5 : 4)))))]
         if 3521360.0 == prefix_z9 {
            break
         }
      } while (friend_u3.contains { $0 as? Float == prefix_z9 }) && (3521360.0 == prefix_z9)
          var contentb: Int = 3
          var indicesg: [String: Any]! = [String(cString: [105,110,105,116,0], encoding: .utf8)!:94, String(cString: [97,110,110,117,108,97,114,0], encoding: .utf8)!:10]
         friend_u3.append((Int(detectedJ > 280572905.0 || detectedJ < -280572905.0 ? 36.0 : detectedJ) / 1))
         contentb /= Swift.max(2, (1 >> (Swift.min(4, labs((buttonsn ? 3 : 3))))))
         indicesg = ["\(contentb)": 3]
      for _ in 0 ..< 2 {
         buttonsn = (friend_u3.contains { $0 as? Double == detectedJ })
      }
         prefix_z9 /= Swift.max(Float(3 + friend_u3.count), 1)
         prefix_z9 -= (Float(friend_u3.count % (Swift.max(6, Int(detectedJ > 286471095.0 || detectedJ < -286471095.0 ? 18.0 : detectedJ)))))
      bubbleS["\(response_)"] = bubbleS.count ^ 3
   }

        let indicator = UIActivityIndicatorView(style: .large)
      bubbleS["\(response_)"] = 1
        indicator.color = .white
        indicator.hidesWhenStopped = false
        return indicator
    }()

    private let bottomControlView: UIView = {
       var observer0: [Any]! = [18, 8, 16]
   withUnsafeMutablePointer(to: &observer0) { pointer in
          _ = pointer.pointee
   }
   while (5 < (observer0.count >> (Swift.min(labs(2), 2))) && (observer0.count >> (Swift.min(labs(2), 4))) < 1) {
      observer0 = [observer0.count ^ 2]
      break
   }

        let view = UIView()
        view.backgroundColor = .black
        return view
    }()

    private let controlStackView: UIStackView = {
       var ageB: String! = String(cString: [118,108,98,117,102,0], encoding: .utf8)!
      ageB.append("\((ageB == (String(cString:[112,0], encoding: .utf8)!) ? ageB.count : ageB.count))")

        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        return stackView
    }()

    private let reverseButton: UIButton = {
       var spreadD: String! = String(cString: [119,114,105,116,101,116,114,117,110,99,0], encoding: .utf8)!
   for _ in 0 ..< 3 {
       var url0: Bool = false
       var friendsG: [String: Any]! = [String(cString: [100,111,119,110,0], encoding: .utf8)!:String(cString: [116,105,101,114,0], encoding: .utf8)!, String(cString: [116,101,120,105,112,111,100,0], encoding: .utf8)!:String(cString: [98,117,110,100,108,101,0], encoding: .utf8)!]
       var topG: Float = 2.0
       var deletedq: String! = String(cString: [99,111,109,112,108,101,120,0], encoding: .utf8)!
       var indexR: Int = 0
      withUnsafeMutablePointer(to: &indexR) { pointer in
             _ = pointer.pointee
      }
      while (Float(deletedq.count) == topG) {
         deletedq.append("\(3 - indexR)")
         break
      }
      if 1 <= indexR {
          var errorP: String! = String(cString: [115,97,116,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &errorP) { pointer in
    
         }
          var tapn: String! = String(cString: [118,97,99,117,117,109,0], encoding: .utf8)!
         withUnsafeMutablePointer(to: &tapn) { pointer in
                _ = pointer.pointee
         }
         indexR ^= ((String(cString:[103,0], encoding: .utf8)!) == tapn ? indexR : tapn.count)
         errorP.append("\(3 - deletedq.count)")
      }
         indexR -= indexR ^ friendsG.keys.count
      repeat {
         topG /= Swift.max((Float(Int(topG > 256966746.0 || topG < -256966746.0 ? 48.0 : topG))), 3)
         if 4440285.0 == topG {
            break
         }
      } while (friendsG["\(topG)"] == nil) && (4440285.0 == topG)
          var guideL: Double = 2.0
         withUnsafeMutablePointer(to: &guideL) { pointer in
    
         }
         url0 = 51 >= indexR
         guideL += Double(indexR)
         friendsG = ["\(friendsG.values.count)": friendsG.keys.count]
      repeat {
          var x_layery: Int = 1
         withUnsafeMutablePointer(to: &x_layery) { pointer in
    
         }
          var mockV: String! = String(cString: [99,111,109,112,111,110,101,110,116,115,0], encoding: .utf8)!
          var keyA: [Any]! = [59, 41, 60]
         withUnsafeMutablePointer(to: &keyA) { pointer in
                _ = pointer.pointee
         }
         deletedq = "\(deletedq.count)"
         x_layery ^= ((url0 ? 5 : 1))
         mockV.append("\(((String(cString:[116,0], encoding: .utf8)!) == mockV ? mockV.count : x_layery))")
         keyA.append(x_layery | 1)
         if deletedq == (String(cString:[108,49,110,108,105,102,0], encoding: .utf8)!) {
            break
         }
      } while (1 < indexR) && (deletedq == (String(cString:[108,49,110,108,105,102,0], encoding: .utf8)!))
      for _ in 0 ..< 3 {
          var sentenceU: Bool = false
          var tapZ: String! = String(cString: [112,105,120,98,108,111,99,107,100,115,112,0], encoding: .utf8)!
          _ = tapZ
         friendsG = [tapZ: ((url0 ? 5 : 4) / 2)]
         sentenceU = (topG * Float(friendsG.values.count)) <= 95.28
      }
      repeat {
         indexR |= deletedq.count
         if indexR == 1932702 {
            break
         }
      } while (indexR == 1932702) && ((4 % (Swift.max(5, indexR))) <= 5 || (indexR + 4) <= 4)
      if deletedq.count > 4 {
         deletedq.append("\(((url0 ? 5 : 3) - Int(topG > 47847845.0 || topG < -47847845.0 ? 3.0 : topG)))")
      }
       var topic8: String! = String(cString: [97,116,116,0], encoding: .utf8)!
      repeat {
         topic8.append("\(topic8.count | 2)")
         if topic8 == (String(cString:[118,57,101,0], encoding: .utf8)!) {
            break
         }
      } while (topic8 == (String(cString:[118,57,101,0], encoding: .utf8)!)) && (deletedq.hasPrefix("\(topic8.count)"))
       var launchq: [String: Any]! = [String(cString: [101,120,116,101,110,100,105,110,103,0], encoding: .utf8)!:63, String(cString: [100,105,115,112,111,115,105,116,105,111,110,0], encoding: .utf8)!:23]
       var seed1: [String: Any]! = [String(cString: [105,116,101,109,0], encoding: .utf8)!:String(cString: [112,114,115,99,116,112,0], encoding: .utf8)!, String(cString: [110,111,100,101,108,97,121,0], encoding: .utf8)!:String(cString: [115,116,114,99,115,112,110,0], encoding: .utf8)!]
         deletedq = "\((deletedq == (String(cString:[112,0], encoding: .utf8)!) ? indexR : deletedq.count))"
         friendsG["\(topG)"] = 3 - friendsG.values.count
         launchq["\(indexR)"] = seed1.keys.count | 2
         seed1 = [deletedq: 2 | indexR]
      spreadD = "\(2 | deletedq.count)"
   }

        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "videoRoom_reverse"), for: .normal)
        return button
    }()

    private let cameraButton: UIButton = {
       var alexb: Bool = true
    var momentA: Double = 2.0
   for _ in 0 ..< 1 {
      momentA /= Swift.max((Double(Int(momentA > 97972737.0 || momentA < -97972737.0 ? 66.0 : momentA) / 3)), 3)
   }

        let button = UIButton(type: .custom)
   repeat {
      alexb = !alexb
      if alexb ? !alexb : alexb {
         break
      }
   } while (1.25 < (momentA + 5.56)) && (alexb ? !alexb : alexb)
        button.setImage(UIImage(named: "videoRoom_camera"), for: .normal)
        return button
    }()

    private let micButton: UIButton = {
       var top7: Bool = true
    var storagej: [Any]! = [28, 34]
      top7 = (storagej.contains { $0 as? Bool == top7 })

        let button = UIButton(type: .custom)
       var authorizationG: String! = String(cString: [98,105,97,115,101,100,0], encoding: .utf8)!
       _ = authorizationG
          var transactionso: [Any]! = [String(cString: [105,116,97,108,105,97,110,0], encoding: .utf8)!, String(cString: [114,111,117,116,105,110,115,0], encoding: .utf8)!]
          var keyQ: Int = 2
         authorizationG = "\(3)"
         transactionso.append(authorizationG.count)
         keyQ ^= keyQ
          var coins0: Double = 1.0
         authorizationG = "\((Int(coins0 > 74523984.0 || coins0 < -74523984.0 ? 88.0 : coins0)))"
      for _ in 0 ..< 1 {
         authorizationG.append("\(((String(cString:[85,0], encoding: .utf8)!) == authorizationG ? authorizationG.count : authorizationG.count))")
      }
      top7 = (String(cString:[69,0], encoding: .utf8)!) == authorizationG
        button.setImage(UIImage(named: "videoRoom_mic"), for: .normal)
   repeat {
      storagej.append(storagej.count - storagej.count)
      if 3627001 == storagej.count {
         break
      }
   } while (3627001 == storagej.count) && (2 == (2 % (Swift.max(7, storagej.count))) && 2 == (storagej.count % 2))
        return button
    }()

    private let hangUpButton: UIButton = {
       var elbowl: Bool = false
       var glyph_: String! = String(cString: [115,101,115,115,105,111,110,105,100,0], encoding: .utf8)!
       var updated9: String! = String(cString: [99,97,112,105,116,97,108,105,122,105,110,103,0], encoding: .utf8)!
       var averageS: Double = 0.0
       var created9: Double = 5.0
         averageS += Double(3)
      repeat {
         created9 /= Swift.max((Double(Int(averageS > 63859720.0 || averageS < -63859720.0 ? 39.0 : averageS) - updated9.count)), 3)
         if created9 == 1693617.0 {
            break
         }
      } while (3.59 < created9) && (created9 == 1693617.0)
      while ((3.99 * created9) <= 2.56 || (4 ^ updated9.count) <= 5) {
          var cellb: Float = 2.0
          var insetV: [String: Any]! = [String(cString: [105,110,116,101,114,112,114,101,116,0], encoding: .utf8)!:64, String(cString: [109,111,100,105,102,105,101,114,0], encoding: .utf8)!:48, String(cString: [115,101,114,105,97,108,105,122,101,114,0], encoding: .utf8)!:19]
         withUnsafeMutablePointer(to: &insetV) { pointer in
    
         }
         updated9.append("\(3 << (Swift.min(5, updated9.count)))")
         cellb += (Float(Int(averageS > 262717257.0 || averageS < -262717257.0 ? 66.0 : averageS) << (Swift.min(labs(3), 5))))
         insetV["\(cellb)"] = (Int(averageS > 358689955.0 || averageS < -358689955.0 ? 40.0 : averageS) | Int(cellb > 32525706.0 || cellb < -32525706.0 ? 41.0 : cellb))
         break
      }
       var presentationS: String! = String(cString: [99,111,112,105,101,100,0], encoding: .utf8)!
         updated9 = "\(2)"
         presentationS.append("\((Int(averageS > 240897197.0 || averageS < -240897197.0 ? 88.0 : averageS)))")
      elbowl = updated9.count > 70 || !elbowl
      glyph_ = "\(1 | glyph_.count)"

        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "videoRoom_off"), for: .normal)
        return button
    }()
}
