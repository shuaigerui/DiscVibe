
import UIKit

import Foundation

struct DV_Base: Codable {
var editTag: Int? = 0
var followingTrimmed_string: String?
var suffix_margin: Double? = 0


    var avatarImageName: String
    var username: String
    var content: String
    var isReported: Bool

    init(
        avatarImageName: String,
        username: String,
        content: String,
        isReported: Bool = false
    ) {
        self.avatarImageName = avatarImageName
        self.username = username
        self.content = content
        self.isReported = isReported
    }

    enum CodingKeys: String, CodingKey {
        case avatarImageName
        case username
        case content
        case isReported
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        avatarImageName = try container.decode(String.self, forKey: .avatarImageName)
        username = try container.decode(String.self, forKey: .username)
        content = try container.decode(String.self, forKey: .content)
        isReported = try container.decodeIfPresent(Bool.self, forKey: .isReported) ?? false
    }
}

struct DV_History: Codable {
var is_Green: Bool? = false
var insets_max: Double? = 0



    var avatarImageName: String
    var username: String
    var postImageName: String
    var likeAvatarImageNames: [String]
    var likeCount: Int
    var caption: String
    var timeText: String
    var comments: [DV_Base]
    var isReport: Bool
    var isLike: Bool

    var likesText: String {
       var contentW: String! = String(cString: [98,115,105,122,101,0], encoding: .utf8)!
    var defaultsN: Int = 1
    _ = defaultsN
   for _ in 0 ..< 2 {
       var commentso: Double = 0.0
       _ = commentso
       var m_positionN: String! = String(cString: [97,109,112,108,105,116,117,100,101,0], encoding: .utf8)!
      for _ in 0 ..< 2 {
          var destination6: Double = 0.0
         withUnsafeMutablePointer(to: &destination6) { pointer in
                _ = pointer.pointee
         }
         commentso -= (Double(Int(destination6 > 208020192.0 || destination6 < -208020192.0 ? 80.0 : destination6) % (Swift.max(m_positionN.count, 6))))
      }
      repeat {
         m_positionN = "\((Int(commentso > 287100562.0 || commentso < -287100562.0 ? 94.0 : commentso) & 2))"
         if m_positionN == (String(cString:[122,48,119,0], encoding: .utf8)!) {
            break
         }
      } while (m_positionN.hasPrefix("\(commentso)")) && (m_positionN == (String(cString:[122,48,119,0], encoding: .utf8)!))
         m_positionN.append("\((m_positionN.count * Int(commentso > 13953280.0 || commentso < -13953280.0 ? 71.0 : commentso)))")
      repeat {
          var path1: String! = String(cString: [99,121,99,108,101,100,0], encoding: .utf8)!
          _ = path1
          var refreshn: String! = String(cString: [110,111,119,0], encoding: .utf8)!
          var u_playerB: String! = String(cString: [119,95,57,52,0], encoding: .utf8)!
          _ = u_playerB
         commentso += Double(refreshn.count / (Swift.max(3, path1.count)))
         u_playerB = "\(u_playerB.count % (Swift.max(2, 9)))"
         if 1919999.0 == commentso {
            break
         }
      } while (1919999.0 == commentso) && (2 < (1 * m_positionN.count) && 2.52 < (commentso / (Swift.max(Double(m_positionN.count), 9))))
      while ((Int(commentso > 227682444.0 || commentso < -227682444.0 ? 78.0 : commentso) * m_positionN.count) > 2 && 4 > (m_positionN.count + 2)) {
          var originc: Bool = true
          _ = originc
          var passwordv: Float = 2.0
          _ = passwordv
          var itemsI: String! = String(cString: [114,101,115,116,114,105,99,116,105,111,110,115,0], encoding: .utf8)!
         m_positionN.append("\((Int(passwordv > 135360606.0 || passwordv < -135360606.0 ? 54.0 : passwordv) / (Swift.max(itemsI.count, 8))))")
         originc = itemsI == (String(cString:[57,0], encoding: .utf8)!)
         break
      }
      if 4 > m_positionN.count {
         m_positionN.append("\(((String(cString:[78,0], encoding: .utf8)!) == m_positionN ? Int(commentso > 4081707.0 || commentso < -4081707.0 ? 36.0 : commentso) : m_positionN.count))")
      }
      defaultsN %= Swift.max(1, m_positionN.count | 1)
   }
   while (contentW != String(cString:[48,0], encoding: .utf8)! && 2 == contentW.count) {
      contentW.append("\(contentW.count)")
      break
   }

            return "\(likeCount) likes"
    }
}

extension DV_History {

    static let mock = DV_History(
        avatarImageName: "info_pic",
        username: "Alex R",
        postImageName: "home_ultimate",
        likeAvatarImageNames: ["info_pic", "info_pic", "info_pic"],
        likeCount: 11,
        caption: "What professional understanding do you have of sculptural art oil?",
        timeText: "12h ago",
        comments: [
            DV_Base(
                avatarImageName: "info_pic",
                username: "Esme",
                content: "I went on an outdoor trip with my best friend and we pitched a tent for the night."
            ),
            DV_Base(
                avatarImageName: "info_pic",
                username: "Esme",
                content: "I went on an outdoor trip with my best friend and we pitched a tent for the night."
            )
        ],
        isReport: false,
        isLike: false
    )
}
