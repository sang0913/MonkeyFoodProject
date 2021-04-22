//
//  MorebarController.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 09/04/2021.
//

import UIKit
class MorebarController:UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    
    private let mytable:UITableView = {
        let table = UITableView()
        
        table.separatorInset = .zero
        table.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
       
       
        
        table.register(Toptile_MoreBar_TableViewCell.self, forCellReuseIdentifier: Toptile_MoreBar_TableViewCell.identifier)
        table.register(Payment_MoreBar_TableViewCell.self, forCellReuseIdentifier: Payment_MoreBar_TableViewCell.identifier)
        table.register(order_MoreBar_TableViewCell.self, forCellReuseIdentifier: order_MoreBar_TableViewCell.identifier)
        table.register(notification_MoreBar_TableViewCell.self, forCellReuseIdentifier: notification_MoreBar_TableViewCell.identifier)
        table.register(inbox_MoreBar_TableViewCell.self, forCellReuseIdentifier: inbox_MoreBar_TableViewCell.identifier)
        table.register(aboutUS_MoreBar_TableViewCell.self, forCellReuseIdentifier: aboutUS_MoreBar_TableViewCell.identifier)

        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mytable)
        mytable.frame = view.bounds
        mytable.dataSource = self
        mytable.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Toptile_MoreBar_TableViewCell.identifier, for: indexPath) as! Toptile_MoreBar_TableViewCell
          
            return cell
        }
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Payment_MoreBar_TableViewCell.identifier, for: indexPath) as! Payment_MoreBar_TableViewCell
           
            return cell
        }
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: order_MoreBar_TableViewCell.identifier, for: indexPath) as! order_MoreBar_TableViewCell
            
 
            return cell
        }
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: notification_MoreBar_TableViewCell.identifier, for: indexPath) as! notification_MoreBar_TableViewCell
            
            return cell
        }
        if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: inbox_MoreBar_TableViewCell.identifier, for: indexPath) as! inbox_MoreBar_TableViewCell
            
            return cell
        }
        if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: aboutUS_MoreBar_TableViewCell.identifier, for: indexPath) as! aboutUS_MoreBar_TableViewCell
           
            return cell
        }
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "Toptile_MoreBar_TableViewCell", for: indexPath)
     
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 50
        }
        if indexPath.row == 1 {
            return 106
        }
        if indexPath.row <= 5 {
            return 94
        }
        else {
            return 0
        }
         
        
    }
    
}
