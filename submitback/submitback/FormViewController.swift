//
//  FormViewController.swift
//  submitback
//
//  Created by yonghee lee on 2021/10/19.
//

import UIKit

class FormViewController : UIViewController
{
    
    @IBOutlet var email: UITextField!
    @IBOutlet var update: UISwitch!
    @IBOutlet var period: UIStepper!
    
    
    @IBAction func onSubmit(_ sender: Any) {
        
        //let preVC = self.presentationController
        //guard let vc = preVC as? ViewController else{return}
        
        //vc.paramEmail = self.email.text
        //vc.paramUpdate = self.update.isOn
        //vc.paramPeriod = self.period.value
        
        
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        ad?.paramEmail = self.email.text
        ad?.paramUpdate = self.update.isOn
        ad?.paramPeriod = self.period.value
        
        
        self.presentingViewController?.dismiss(animated: true)
    }
}
