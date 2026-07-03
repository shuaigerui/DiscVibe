
import Foundation

import UIKit

class DV_PoseView: UIView {
private var bubbleMargin: Double? = 0.0
private var poolPadding: Double? = 0.0




    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(emptyView)
        
        emptyView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.height.equalTo(152)
        }
    }
    
    private let emptyView: UIImageView = {
       var existing4: [Any]! = [String(cString: [115,105,103,110,97,116,117,114,101,115,0], encoding: .utf8)!, String(cString: [98,111,100,101,114,0], encoding: .utf8)!]
    _ = existing4
      existing4 = [existing4.count]

        let v = UIImageView()
        v.image = UIImage(named: "common_empty")
        v.contentMode = .scaleAspectFill
        return v
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
