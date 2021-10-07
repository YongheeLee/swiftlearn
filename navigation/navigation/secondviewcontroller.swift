//
//  secondviewcontroller.swift
//  navigation
//
//  Created by yonghee lee on 2021/10/07.
//

import UIKit

class SecondViewController : UIViewController
{
    
    @IBAction func back2(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
        
    }
}
