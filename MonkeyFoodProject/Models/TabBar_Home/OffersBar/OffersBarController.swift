//
//  OffersBarController.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 09/04/2021.
//

import UIKit
class OffersBarController:UIViewController,UITableViewDataSource,UITableViewDelegate  {
   //MARK:UI Elements
    let arrImg = ["2222","3333","4444","2222","3333","4444","2222","3333","4444","2222","3333","4444","2222","3333","4444","s1","s2","s3","s4"]
     
    private let myTable:UITableView = {
            let table = UITableView()
        table.register(Toptitle_OfferTabbar_TableViewCell.self, forCellReuseIdentifier: Toptitle_OfferTabbar_TableViewCell.identifier)
        table.register(ButtonCheck_OfferTabbar_TableViewCell.self, forCellReuseIdentifier: ButtonCheck_OfferTabbar_TableViewCell.identifier)
        table.register(Table_Offer_TableViewCell.self, forCellReuseIdentifier: Table_Offer_TableViewCell.identifier)
       
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
            
            
            return arrImg.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            if indexPath.row  == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: Toptitle_OfferTabbar_TableViewCell.identifier, for: indexPath) as! Toptitle_OfferTabbar_TableViewCell
           
                cell.separatorInset = .zero
                cell.selectionStyle = .none
                cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
                return cell
            }
            if indexPath.row  == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: ButtonCheck_OfferTabbar_TableViewCell.identifier, for: indexPath) as! ButtonCheck_OfferTabbar_TableViewCell
           
                cell.separatorInset = .zero
                cell.selectionStyle = .none
                cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
                return cell
            }
            if indexPath.row  <= 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: Table_Offer_TableViewCell.identifier, for: indexPath) as! Table_Offer_TableViewCell
                cell.img_Food_Offers.image = UIImage(named: arrImg[indexPath.row])
                cell.separatorInset = .zero
                cell.selectionStyle = .none
                cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
                return cell
            }
       
            else{
                let cell = tableView.dequeueReusableCell(withIdentifier: "Toptitle_OfferTabbar_TableViewCell", for: indexPath)
                cell.separatorInset = .zero
                return cell
            }
            
        }
        
    
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            if indexPath.row == 0 {
                return 111
            }
            if indexPath.row == 1 {
                return 51
            }
            if indexPath.row <= 4 {
                return 264
            }
          
           return 0
        }
        
        
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if indexPath.row == 3  {
                tableView.isUserInteractionEnabled = false
            }
        }
        
        
        
        
    }

