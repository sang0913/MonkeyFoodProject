//
//  ProfileBar_ViewController.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 12/04/2021.
//

import UIKit

class ProfileBar_ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    //MARK:UI Elements
    
    var array = ["1","","1","1","","1","1","","1","1","","1"]
    
    private let myTable:UITableView = {
        let table = UITableView()
        table.register(Toptitle_ProfileBar_TableViewCell.self, forCellReuseIdentifier: Toptitle_ProfileBar_TableViewCell.identifier)
        table.register(InfoUser_ProfileBar_TableViewCell.self, forCellReuseIdentifier: InfoUser_ProfileBar_TableViewCell.identifier)
        table.register(textField_ProfileBar_TableViewCell.self, forCellReuseIdentifier: textField_ProfileBar_TableViewCell.identifier)
        table.register(ButtonSave_ProfileBar_TableViewCell.self, forCellReuseIdentifier: ButtonSave_ProfileBar_TableViewCell.identifier)
        return table
    }()
    
    
    //MARK:Object LifeCycle
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myTable)
        //        myTable.register(HomeScreenTableViewCell.self, forCellReuseIdentifier: "HomeScreenTableViewCell")
        myTable.frame  = view.bounds
        myTable.dataSource = self
        myTable.delegate = self
    }
    
    
    
    //MARK:Setup UI Elements
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row  == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Toptitle_ProfileBar_TableViewCell.identifier, for: indexPath) as! Toptitle_ProfileBar_TableViewCell
           
            
            cell.separatorInset = .zero
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell
        }
     
        
        if indexPath.row  == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: InfoUser_ProfileBar_TableViewCell.identifier, for: indexPath) as! InfoUser_ProfileBar_TableViewCell
           
            
            cell.separatorInset = .zero
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell
        }
        
        if indexPath.row  == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: textField_ProfileBar_TableViewCell.identifier, for: indexPath) as! textField_ProfileBar_TableViewCell
           
            
            cell.separatorInset = .zero
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell
        }
        if indexPath.row  == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier:ButtonSave_ProfileBar_TableViewCell.identifier) as! ButtonSave_ProfileBar_TableViewCell
            cell.separatorInset = .zero
            cell.selectionStyle = .none
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell
        }
     
        
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Toptitle_ProfileBar_TableViewCell", for: indexPath)
            cell.separatorInset = .zero
            return cell
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 60
        }
      
        if indexPath.row == 1 {
            return 245
        }
        if indexPath.row == 2 {
            return 438
        }
        if indexPath.row == 3 {
            return 73
        }
        return 0
    }
    
    
  

}
