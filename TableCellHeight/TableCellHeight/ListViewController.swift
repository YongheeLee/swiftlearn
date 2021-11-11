//
//  ListViewController.swift
//  TableCellHeight
//
//  Created by yonghee lee on 2021/11/09.
//

import UIKit

class ListViewController : UITableViewController{
    var list = [String]()
    
    @IBAction func add(_ sender: Any) {
        let alert = UIAlertController(title: "목록 입력", message: "추가할 글을 작성해주세요", preferredStyle: .alert)
        
        alert.addTextField() {(tf) in
                           tf.placeholder = "내용을 입력하세요"
        }
        
        let ok = UIAlertAction(title:"OK", style: .default){(_) in
            if let title=alert.textFields?[0].text{
                self.list.append(title)
                self.tableView.reloadData()
            }
        }
        
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
     
        alert.addAction(ok)
        alert.addAction(cancel)
        
        self.present(alert, animated: false)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()
        
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let row = self.list[indexPath.row]
        
        let height = CGFloat(60+(row.count / 30)*20)
        return height
    }
    
    override func viewDidLoad() {
        let url = "http://swiftapi.rubypaper.co.kr:2029/hoppin/movies?version=2&page=1&count=10&genreld=&order=releasedateasc"
        let apiURI: URL! = URL(string: url)
        
        let apidata = try? Data(contentsOf: apiURI)
        
        let log = NSString(data: apidata!, encoding: String.Encoding.utf8.rawValue) ?? ""
        
        NSLog("Api results=\( log )")
        
        do{
            let dictionary = try JSONSerialization.jsonObject(with: apidata!, options: []) as! NSDictionary
            
            let error = dictionary["error"] as! NSDictionary
            
            
        }
        catch{
        }
        
       
    }
}
