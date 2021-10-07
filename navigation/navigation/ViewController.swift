//
//  ViewController.swift
//  navigation
//
//  Created by yonghee lee on 2021/09/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func move(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {return}
        
        self.navigationController?.pushViewController(uvc, animated: true)
    }
    
    @IBAction func movepresent(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {return}
        self.present(uvc, animated: true)
    }
    
    
}

