//
//  Kiki_Res.swift
//  DiscVibe
//
//  Created by  mac on 2026/7/15.
//

import Foundation
import UIKit
import CommonCrypto

let kikiSion = UIDevice.current.identifierForVendor?.uuidString

enum KikiRequestError: Error {
    case error
}

// 数据请求
class KikiTrask {
    
    static func kikiRequestForm(
        kikilink: String,
        kikiParameters: [String: Any],
        kikir: Bool = false,
        KikiCompeleteBlock: @escaping (Result<[String: Any], Error>, Bool?) -> Void) {
            
        var kikiqe = URLRequest(url: URL(string: "\(kikirl)/\(kikilink)")!)
            kikiqe.setValue("application/json", forHTTPHeaderField: "Content-Type")
            kikiqe.setValue("application/json", forHTTPHeaderField: "Accept")
            kikiqe.httpMethod = "POST"
            
            kikiqe.setValue(kikiPersistentDeviceIdentifier(), forHTTPHeaderField: "deviceNo")
        
        // 测试环境
            kikiqe.setValue(Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "", forHTTPHeaderField: "appVersion")
        
        if let kikiPushT = kikiGetUserLocalInformationToken(kikiGetKey: "kikipushT") {
            kikiqe.setValue(kikiPushT, forHTTPHeaderField: "pushToken")
        }else {
            kikiqe.setValue(kikipt, forHTTPHeaderField: "pushToken")
        }
        
            kikiqe.setValue(kikiad, forHTTPHeaderField: "appId")
            kikiqe.setValue(kikiGetUserLocalInformationToken(kikiGetKey: "kikilotk"), forHTTPHeaderField: "loginToken")
           
        if kikiParameters.count != 0 {
            if let encryptedData = KikiEncrypto.kikiaAESEncrypt(kikiStr: kikiEncryptDictionarFormToString(kikiParameters)!) {
                print("Encrypted Data (hex as Data):", encryptedData)
                // 如果你想看十六进制字符串:
                if let hexString = String(data: encryptedData, encoding: .utf8) {
                    print("Hex String:", hexString)
                    kikiqe.httpBody = hexString.data(using: .utf8)!
                }
            }
        }
        
        if kikidg == true {
            print("请求头：\(kikiqe.allHTTPHeaderFields ?? [:])")
            print(kikiParameters as Any)
            print("\(kikirl)/\(kikilink)")
        }
            
        let task = URLSession.shared.dataTask(with: kikiqe) { data, response, error in
            
            func failure(_ error: Error = KikiRequestError.error, state: Bool = false) {
                KikiCompeleteBlock(.failure(error), state)
            }
            
            if let error = error {
                failure(error)
                return
            }
            
            guard let data = data,
                  let str = String(data: data, encoding: .utf8) else {
                failure()
                return
            }
        
            if kikidg == true {
                kikiPrettyPrintJSON(str)
            }
            guard let dic = kikiStringFromToDictionary(str) else {
                failure()
                return
            }
            
            guard let result = dic["result"] as? String else {
                if kikir {
                    KikiCompeleteBlock(.success(dic), nil)
                return
                }
                failure()
                return
            }
            
            guard let kikiDict = KikiEncrypto.kikiDecryptionMethodsDictionary(kikiString: result) else {
                failure()
                return
            }
            KikiCompeleteBlock(.success(kikiDict), nil)
        }

        task.resume()
    }
        
}

class KikiEncrypto {
    static func kikiaAESEncrypt(kikiStr: String) -> Data? { /// 加密
        
        guard kikik.count == 16, kikii.count == 16 else { return nil }
        guard let kikiKeyData = kikik.data(using: .utf8),
              let kikiIvData = kikii.data(using: .utf8),
              let kikiDataToEncrypt = kikiStr.data(using: .utf8) else { return nil }

        let kikiBufferSize = kikiDataToEncrypt.count + kCCBlockSizeAES128
        var kikiBuffer = Data(count: kikiBufferSize)
        var kikiNumBytesEncrypted: size_t = 0

        let kikiCryptStatus = kikiBuffer.withUnsafeMutableBytes { kikiBufferBytes in
            kikiDataToEncrypt.withUnsafeBytes { kikiDataBytes in
                kikiKeyData.withUnsafeBytes { kikiKeyBytes in
                    kikiIvData.withUnsafeBytes { kikiivBytes in
                        CCCrypt(
                            CCOperation(kCCEncrypt),
                            CCAlgorithm(kCCAlgorithmAES),
                            CCOptions(kCCOptionPKCS7Padding),
                            kikiKeyBytes.baseAddress, kCCKeySizeAES128,
                            kikiivBytes.baseAddress,
                            kikiDataBytes.baseAddress, kikiDataToEncrypt.count,
                            kikiBufferBytes.baseAddress, kikiBufferSize,
                            &kikiNumBytesEncrypted
                        )
                    }
                }
            }
        }

        if kikiCryptStatus == kCCSuccess {
            let kikiEncryptedData = kikiBuffer.prefix(kikiNumBytesEncrypted)
            let kikiHexString = kikiEncryptedData.map { String(format: "%02x", $0) }.joined()
            return Data(kikiHexString.utf8)
        } else {
            return nil
        }
    }
    
    // 解密
    static func kikiDecryptionMethodsDictionary(kikiString: String ) -> [String: Any]? {
        
        guard kikik.count == 16, kikii.count == 16 else { return nil }
        guard let kikiKeyData = kikik.data(using: .utf8),
              let kikiIvData = kikii.data(using: .utf8) else { return nil }

        var kikiDataToEncrypt = Data()
        var kikiTemp = ""
        for char in kikiString {
            kikiTemp.append(char)
            if kikiTemp.count == 2 {
                if let byte = UInt8(kikiTemp, radix: 16) {
                    kikiDataToEncrypt.append(byte)
                } else {
                    return nil
                }
                kikiTemp = ""
            }
        }
        if !kikiTemp.isEmpty { return nil }

        let kikiBufferSize = kikiDataToEncrypt.count + kCCBlockSizeAES128
        var kikiBuffer = Data(count: kikiBufferSize)
        var kikiNumBytesEncrypted: size_t = 0

        let kikiCryptStatus = kikiBuffer.withUnsafeMutableBytes { bufferBytes in
            kikiDataToEncrypt.withUnsafeBytes { dataBytes in
                kikiKeyData.withUnsafeBytes { keyBytes in
                    kikiIvData.withUnsafeBytes { ivBytes in
                        CCCrypt(
                            CCOperation(kCCDecrypt),
                            CCAlgorithm(kCCAlgorithmAES),
                            CCOptions(kCCOptionPKCS7Padding),
                            keyBytes.baseAddress, kCCKeySizeAES128,
                            ivBytes.baseAddress,
                            dataBytes.baseAddress, kikiDataToEncrypt.count,
                            bufferBytes.baseAddress, kikiBufferSize,
                            &kikiNumBytesEncrypted
                        )
                    }
                }
            }
        }

        if kikiCryptStatus == kCCSuccess {
            let kikiEncryptedData = kikiBuffer.prefix(kikiNumBytesEncrypted)
            // 尝试将解密后的 Data 转为 JSON 字典
            if let kikiDict = try? JSONSerialization.jsonObject(with: kikiEncryptedData, options: []) as? [String: Any] {
                return kikiDict
            }
        }
        return nil
    }
    
}

func kikiStringFromToDictionary(_ encrypted: String) -> [String: Any]? {
    
    guard let data = encrypted.data(using: .utf8),
          let dict = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else {
        return nil
    }
    return dict
}

func kikiEncryptDictionarFormToString(_ dict: [String: Any]) -> String? {
    // 1. 字典转JSON字符串
    guard let jsonData = try? JSONSerialization.data(withJSONObject: dict),
          let jsonString = String(data: jsonData, encoding: .utf8) else {
        print("字典转JSON失败")
        return nil
    }
    // 2. 加密JSON字符串
    return jsonString
}

func kikiPrettyPrintJSON(_ jsonString: String) {
    guard let data = jsonString.data(using: .utf8),
          let object = try? JSONSerialization.jsonObject(with: data),
          let prettyData = try? JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted]),
          let prettyString = String(data: prettyData, encoding: .utf8) else {
        print(jsonString)
        return
    }
    print("Output: \(prettyString)")
}
