//
//  ViewController.swift
//  tranvalue
//
//  Created by yonghee lee on 2021/10/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBAction func onUpdate(_ sender: UISwitch) {
        if(sender.isOn)
        {
            self.isUpdateTxt.text = "갱신함"
        }
        else{
            self.isUpdateTxt.text = "갱신하지 않음"
        }
        
    }
    
    @IBOutlet var interval: UIStepper!
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalTxt.text = "\(value)분 마다"
    }
    @IBOutlet var isUpdateTxt: UILabel!
    @IBOutlet var intervalTxt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onSubmit(_ sender: Any) {
        let ctrl = sender as! UIButton
        
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else{return}
        
        rvc.paramEmail = self.email.text!
        rvc.paramUpdate = self.isUpdate.isOn
        rvc.paramInterval = self.interval.value
        
        self.present(rvc, animated: true)
        
    }
    
}

