//
//  SafeAreaLayoutGuideProtocol.swift
//  SnapKitCode
//
//  Created by 德志 on 2018/6/9.
//  Copyright © 2018年 com.aiiage.www. All rights reserved.
//

import UIKit

public protocol SafeAreaLayoutGuideProtocol : class {
    weak var safeAreaView : UIView? {get set}
}

public extension SafeAreaLayoutGuideProtocol where Self : UIViewController {

    /// 添加安全区域View
    public func add(safeAreaView:UIView) {
        self.view.addSubview(safeAreaView)
        safeAreaView.snp.makeConstraints { (make) in
            if #available(iOS 11.0, *) {
                make.trailing.leading.top.bottom.equalTo(view.safeAreaLayoutGuide)
            } else {
                make.trailing.leading.top.bottom.equalToSuperview()
            }
        }
    }
}
