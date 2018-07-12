//
//  SizeTestViewController.swift
//  SnapKitCode
//
//  Created by 德志 on 2018/6/22.
//  Copyright © 2018年 com.aiiage.www. All rights reserved.
//

import UIKit

class SizeTestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red


        let alter = UIAlertController(title:"hahh", message:"dwadwadadwa", preferredStyle: UIAlertControllerStyle.alert)

        let btn1 =  UIAlertAction(title:"返回", style: UIAlertActionStyle.cancel) { (_) in

        }

        let btn2 =  UIAlertAction(title:"ok", style: UIAlertActionStyle.default) { (_) in

        }

        alter.view.backgroundColor = UIColor.red
        alter.addAction(btn1)
        alter.addAction(btn2)


        self.present(alter, animated:false , completion:nil)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
