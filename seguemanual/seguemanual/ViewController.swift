//
//  ViewController.swift
//  seguemanual
//
//  Created by yonghee lee on 2021/10/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segwind(_ sender: Any) {
        self.performSegue(withIdentifier: "seg", sender: self)
    }
    
}

