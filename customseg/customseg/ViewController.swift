//
//  ViewController.swift
//  customseg
//
//  Created by yonghee lee on 2021/10/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        NSLog("segueway identifier: \(segue.identifier!)")
    }


}

