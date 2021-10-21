//
//  SecondVcontrol.swift
//  userdefault
//
//  Created by yonghee lee on 2021/10/21.
//

import UIKit

class SecondVcontrol : UIViewController
{
    
    @IBOutlet var updateC: UISwitch!
    @IBOutlet var emailC: UITextField!
    @IBOutlet var periodC: UIStepper!
    
    @IBAction func onBack(_ sender: Any) {
        
        let ud = UserDefaults.standard
        
        ud.set(self.emailC.text, forKey: "email")
        ud.set(self.updateC.isOn, forKey: "update")
        ud.set(self.periodC.value, forKey: "period")
        
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
