//
//  Injection+Extension.swift
//  AiiageSteamIOS
//
//  Created by 德志 on 2018/6/20.
//  Copyright © 2018年 aiiage. All rights reserved.
//

import UIKit

extension UIViewController {

    #if DEBUG
    @objc func injected() {

        for subview in self.view.subviews {
            subview.removeFromSuperview()
        }
        if let sublayers = self.view.layer.sublayers {
            for sublayer in sublayers {
                sublayer.removeFromSuperlayer()
            }
        }

        awakeFromNib()
        loadView()
        reloadInputViews()
        viewDidLoad()

        if self is UITableViewController, let tableViewController = self as? UITableViewController {
            tableViewController.tableView.reloadData()
        }
        
    }
    #endif
}
