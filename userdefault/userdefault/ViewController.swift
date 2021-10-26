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

    @IBAction func push(_ sender: Any) {
        let alert = UIAlertController(title: "알람", message: "This is sampe", preferredStyle: UIAlertController.Style.alert)
        let cancel = UIAlertAction(title: "default", style:UIAlertAction.Style.default, handler: {(_) in
            self.rUpdate.text = alert.textFields?[0].text
        })
        let cancel1 = UIAlertAction(title: "cancel", style:UIAlertAction.Style.cancel)
        { (_) in
            self.rEmail.text = "cancel button was pushed"
        }
        
        let cancel2 = UIAlertAction(title: "destructive", style:UIAlertAction.Style.destructive, handler: {(_)in
            self.rPeriod.text = "desctruc button was pushed"
        })
        
        alert.addTextField(configurationHandler: {(tf) in
            
        })
        
        alert.addAction(cancel)
        alert.addAction(cancel1)
        alert.addAction(cancel2)
        self.present(alert, animated: false)
        
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


