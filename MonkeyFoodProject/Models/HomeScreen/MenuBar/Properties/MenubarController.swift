//
//  MenubarController.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 09/04/2021.
//

import UIKit
class MenuBarViewcontroller: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    //MARK:UI Elements
    
    var array = ["1","","1","1","","1","1","","1","1","","1"]
    
    private let myTable:UITableView = {
        let table = UITableView()
        table.register(TopTitle_TableViewCell.self, forCellReuseIdentifier: TopTitle_TableViewCell.identifier)
        table.register(  SearchBarMenuTableViewCell.self, forCellReuseIdentifier:   SearchBarMenuTableViewCell.identifier)
        table.register( BodyMenuBar_TableViewCell.self, forCellReuseIdentifier:  BodyMenuBar_TableViewCell.identifier)
      
        return table
    }()
   
    
    //MARK:Object LifeCycle
   override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myTable)
     
        myTable.frame  = view.bounds
        myTable.dataSource = self
        myTable.delegate = self
    }
    
    
    
    //MARK:Setup UI Elements
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row  == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TopTitle_TableViewCell.identifier, for: indexPath) as! TopTitle_TableViewCell
        
            cell.separatorInset = .zero
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell
        }
        if indexPath.row  == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: SearchBarMenuTableViewCell.identifier, for: indexPath) as! SearchBarMenuTableViewCell
         
            cell.separatorInset = .zero
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell
        }
        if indexPath.row  == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: BodyMenuBar_TableViewCell.identifier, for: indexPath) as! BodyMenuBar_TableViewCell
         
            cell.separatorInset = .zero
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell
        }
  
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TopTitle_TableViewCell", for: indexPath)
            cell.separatorInset = .zero
            return cell
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 83
        }
        if indexPath.row == 1 {
            return 69
        }
        if indexPath.row == 2 {
            return 515
        }
   
      
        return 0
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 3  {
            tableView.isUserInteractionEnabled = false
        }
    }
    
    
    
    


}
