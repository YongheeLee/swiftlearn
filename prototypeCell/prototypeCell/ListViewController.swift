//
//  ListViewController.swift
//  prototypeCell
//
//  Created by yonghee lee on 2021/11/02.
//

import UIKit

class ListViewController : UITableViewController{
    var page = 1
    
    var list = [MovieVO]()
        
    var dataset = [("다크나이트", "배트맨이랑 조커 나옴", "2008-09-04", 8.95),
    ("호우시절","비내리는 날" , "2009-10-04", 7.31),
    ("말할 수 없는 비밀", "말하지 마", "2015-05-07", 9.19)]
    
    lazy var listTuple : [MovieVO] = {
            var datalist = [MovieVO]()
            for (title, desc, opendate, rating) in self.dataset{
                let mvo = MovieVO()
                mvo.title = title
                mvo.description = desc
                mvo.opendate = opendate
    
                mvo.rating = rating
                
                datalist.append(mvo)
            }
    
            return datalist
        }()
        

    
    override func viewDidLoad() {
        
        let url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"
        let apiURI: URL! = URL(string: url)
        
        let apidata = try? Data(contentsOf: apiURI)
        
        let log = NSString(data: apidata!, encoding: String.Encoding.utf8.rawValue) ?? ""
        
        NSLog("Api results=\( log )")
        
        do{
            let dictionary = try JSONSerialization.jsonObject(with: apidata!, options: []) as! NSArray
            for item in dictionary
            {
                let dic = item as! NSDictionary
                
                var mvo = MovieVO()
                
                mvo.title = dic["name"] as? String
                mvo.description = dic["description"]as? String
                
                self.list.append(mvo)
            }
            //let error = dictionary["error"] as! NSDictionary
            
            
        }
        catch{
        }
        
       // var mvo = MovieVO()
      //  mvo.title = "다크나이트"
      //  mvo.description = "배트맨이랑 조커 나옴"
      //  mvo.opendate = "2008-09-04"
      //  mvo.rating = 8.95
      //  self.list.append(mvo)
        
      //  mvo = MovieVO()
       // mvo.title = "호우시절"
       // mvo.description = "비내리는 날"
       // mvo.opendate = "2009-10-04"
      //  mvo.rating = 7.31
      //  self.list.append(mvo)
        
      //  mvo = MovieVO()
      //  mvo.title = "말할 수 없는 비밀"
       // mvo.description = "말하지 마"
      //  mvo.opendate = "2015-05-07"
       // mvo.rating = 9.19
      //  self.list.append(mvo)
        
        //use dataset
        
    }
    
    @IBAction func more(_ sender: Any) {
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = self.list[indexPath.row]
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: //"cell")!
                        
        //cell.textLabel?.text = row.title
        //cell.detailTextLabel?.text = row.description
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MovieCell
        
        //let title = cell.viewWithTag(101) as? UILabel
        //let desc = cell.viewWithTag(102) as? UILabel
        //let open = cell.viewWithTag(103) as? UILabel
        //let rating = cell.viewWithTag(104) as? UILabel
        
        //title?.text = row.title
        //desc?.text = row.description
        //open?.text = row.opendate
        //rating?.text = "\row.rating!)"
        cell.title?.text = row.title
        cell.desc?.text = row.description
        cell.open?.text = row.opendate
        
        return cell
    }
}
