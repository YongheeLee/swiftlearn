//
//  SecondViewController.swift
//  ViewChange
//
//  Created by yonghee lee on 2021/09/30.
//

import UIKit

class SecondViewController : UIViewController{

    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
