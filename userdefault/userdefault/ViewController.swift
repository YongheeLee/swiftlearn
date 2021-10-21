//
//  ViewController.swift
//  userdefault
//
//  Created by yonghee lee on 2021/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var rUpdate: UITextField!
    @IBOutlet var rPeriod: UITextField!
    @IBOutlet var rEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email")
        {
            rEmail.text = email
        }
        
        let update = ud.bool(forKey: "update")
        rUpdate.text = (update == true ? "auto up": "manual up")
        
        let interval = ud.double(forKey: "period")
        rPeriod.text = "\(Int(interval))each"
    }
}

