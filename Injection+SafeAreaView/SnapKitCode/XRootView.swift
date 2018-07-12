//
//  XRootView.swift
//  SnapKitCode
//
//  Created by 德志 on 2018/6/8.
//  Copyright © 2018年 com.aiiage.www. All rights reserved.
//

import UIKit
import SnapKit

class XRootView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.red

        let tmp = UIView()
        tmp.backgroundColor = UIColor.green
        addSubview(tmp)
        tmp.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
