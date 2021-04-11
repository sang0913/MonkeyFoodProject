//
//  HomeScreen.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 09/04/2021.
//

import UIKit


class HomeScreenViewcontroller:UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    //MARK:UI Elements

    var array = ["1","","1","1","","1","1","","1","1","","1"]
    var array2 = ["1","","1","1","","1","1","","1","1","","1"]
    private let myTable:UITableView = {
        let table = UITableView()
        table.register(HomeScreenTableViewCell.self, forCellReuseIdentifier: HomeScreenTableViewCell.identifier)
        table.register(SecondTableViewCell.self, forCellReuseIdentifier: SecondTableViewCell.identifier)
        table.register(SearchBarTableViewCell.self, forCellReuseIdentifier: SearchBarTableViewCell.identifier)
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        table.register(TitileMiddle_cell5_TableViewCell.self, forCellReuseIdentifier: TitileMiddle_cell5_TableViewCell.identifier)
        table.register(RecomendFoodTableViewCell.self, forCellReuseIdentifier: RecomendFoodTableViewCell.identifier)
       
        
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
        
        
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row  == 0 {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: HomeScreenTableViewCell.identifier, for: indexPath) as! HomeScreenTableViewCell
            cell0.configure()
            cell0.separatorInset = .zero
            cell0.selectionStyle = .none
            cell0.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell0
        }
        
        else if indexPath.row  == 1 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: SecondTableViewCell.identifier, for: indexPath) as! SecondTableViewCell
            cell1.configure()
            cell1.separatorInset = .zero
            cell1.selectionStyle = .none
            cell1.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell1
        }
        
        else if indexPath.row  == 2 {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: SearchBarTableViewCell.identifier, for: indexPath) as! SearchBarTableViewCell
            
            cell2.separatorInset = .zero
            cell2.selectionStyle = .none
            cell2.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell2
        }
        else if indexPath.row  == 3 {
            let cell3 = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as! CollectionViewTableViewCell
            
            cell3.separatorInset = .zero
            cell3.selectionStyle = .none
            cell3.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell3
        }
        else if indexPath.row == 4 {
            let cell4 = tableView.dequeueReusableCell(withIdentifier: TitileMiddle_cell5_TableViewCell.identifier, for: indexPath) as! TitileMiddle_cell5_TableViewCell
            
            cell4.separatorInset = .zero
            cell4.selectionStyle = .none
            cell4.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell4
        }
        else if indexPath.row <= 8 {
            let cell4 = tableView.dequeueReusableCell(withIdentifier: RecomendFoodTableViewCell.identifier, for: indexPath) as! RecomendFoodTableViewCell
            
            cell4.separatorInset = .zero
            cell4.selectionStyle = .none
            cell4.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return cell4
        }
        
        
        
        
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeScreenTableViewCell", for: indexPath)
            cell.separatorInset = .zero
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 60
        }
        if indexPath.row == 1 {
            return 60
        }
        if indexPath.row == 2 {
            return 60
        }
        if indexPath.row == 3 {
            return 143
        }
        if indexPath.row == 4 {
            return 20
        }
        if indexPath.row <= 8 {
            return 242
        }
        return 100
    }
    
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 3  {
            tableView.isUserInteractionEnabled = false
        }
    }
 
    
    
    
    }
    
