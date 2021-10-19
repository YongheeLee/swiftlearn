//
//  ViewController.swift
//  submitback
//
//  Created by yonghee lee on 2021/10/19.
//

import UIKit

class ViewController: UIViewController {

    //아래 메소드는 화면이 한번 생성될 때 인스턴스가 만들어질 때 한번 실행
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var resultEmail: UILabel!
    
    @IBOutlet var resultUpdate: UILabel!
    
    @IBOutlet var resultPeriod: UILabel!
    
    var paramEmail: String?
    var paramUpdate: Bool?
    var paramPeriod: Double?
    
    //아래는 뷰가 전환될때 마다 호출
    override func viewWillAppear(_ animated: Bool) {
        if let email = paramEmail{
            resultEmail.text = email
        }
        
        if let update = paramUpdate{
            resultUpdate.text = update == true ? "auto update" : "manual update"
        }
        
        if let period = paramPeriod{
            resultPeriod.text = "\(Int(period))each minute"
        }
    }
}

