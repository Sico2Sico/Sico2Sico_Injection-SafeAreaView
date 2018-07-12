//
//  TestXLayouterViewController.swift
//  SnapKitCode
//
//  Created by 德志 on 2018/6/8.
//  Copyright © 2018年 com.aiiage.www. All rights reserved.
//

import UIKit

class TestXLayouterViewController: UIViewController,SafeAreaLayoutGuideProtocol {

    /// 安全区域View
    var safeAreaView: UIView?

    override func loadView() {
            super.loadView()
            safeAreaView = XRootView()
            add(safeAreaView:safeAreaView!)
            safeAreaView?.backgroundColor = UIColor.green


            let childVC = SizeTestViewController()
            addChildViewController(childVC)
            view.addSubview(childVC.view)
            preferredContentSize = CGSize(width: 200, height: 200)

    }



    override func systemLayoutFittingSizeDidChange(forChildContentContainer container: UIContentContainer) {
        print("哈哈哈")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
    }

}

