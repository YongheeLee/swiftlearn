//
//  ViewController.swift
//  TextDelegate
//
//  Created by yonghee lee on 2021/10/28.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBAction func action(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        
        self.present(picker, animated: false)
    }
    @IBOutlet var tf: UITextField!
    @IBOutlet var imgview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tf.delegate = self
        
        
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
            
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
            
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        return true
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            return true
        
    }
    
    
}

