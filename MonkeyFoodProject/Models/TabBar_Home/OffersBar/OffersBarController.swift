//
//  OffersBarController.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 09/04/2021.
//

import UIKit
class OffersBarController:UIViewController,UITableViewDataSource,UITableViewDelegate  {
   //MARK:UI Elements
    private var arrTable:[Restaurents] = []
     
    private let myTable:UITableView = {
            let table = UITableView()
        table.register(Toptitle_OfferTabbar_TableViewCell.self, forCellReuseIdentifier: Toptitle_OfferTabbar_TableViewCell.identifier)
        table.register(ButtonCheck_OfferTabbar_TableViewCell.self, forCellReuseIdentifier: ButtonCheck_OfferTabbar_TableViewCell.identifier)
        table.register(Table_Offer_TableViewCell.self, forCellReuseIdentifier: Table_Offer_TableViewCell.identifier)
        table.separatorInset = .zero
        table.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
            return table
        }()
    
    
        //MARK:Object LifeCycle
         override func viewDidLoad() {
            super.viewDidLoad()
            view.addSubview(myTable)
          
            myTable.frame  = view.bounds
            myTable.dataSource = self
            myTable.delegate = self
            
            loadDataTable()

        }
        
        //MARK:Setup UI Elements
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            
            return arrTable.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            if indexPath.row  == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: Toptitle_OfferTabbar_TableViewCell.identifier, for: indexPath) as! Toptitle_OfferTabbar_TableViewCell
                cell.selectionStyle = .none
                return cell
            }
            
            if indexPath.row  == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: ButtonCheck_OfferTabbar_TableViewCell.identifier, for: indexPath) as! ButtonCheck_OfferTabbar_TableViewCell
                cell.selectionStyle = .none
                return cell
            }
            
            if indexPath.row  <= 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: Table_Offer_TableViewCell.identifier, for: indexPath) as! Table_Offer_TableViewCell
                //image
            let urlhinh = Config.serverURL + "/upload/" + arrTable[indexPath.row].Image
            do {
                let data = try Data(contentsOf: URL(string: urlhinh)!)
                cell.img_Food.image = UIImage(data: data)
                cell.imageView?.contentMode = .scaleAspectFit
            }catch { }
                //text
                cell.selectionStyle = .none
                return cell
            }
       
            else{
                let cell = tableView.dequeueReusableCell(withIdentifier: "Toptitle_OfferTabbar_TableViewCell", for: indexPath)
                
                return cell
            }
            
        }
        
    
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            if indexPath.row == 0 {
                return Demension.shared.largeVerticalMargin_110
            }
            
            if indexPath.row == 1 {
                return Demension.shared.largeVerticalMargin_51
            }
            
            if indexPath.row <= 4 {
                return Demension.shared.largeVerticalMargin_264
            }
          
           return 0
        }
        
        
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if indexPath.row == 3  {
                tableView.isUserInteractionEnabled = false
            }
        }
    //MARK:Action Post to sever
    private func loadDataTable(){
        let url = URL(string: Config.serverURL + "/Restaurents")
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        URLSession.shared.dataTask(with: request, completionHandler: { data , response, error in
            guard error == nil else { print("error"); return }
            guard let data = data else { return }

            let jsonDecoder = JSONDecoder()
            let listRestaurent = try? jsonDecoder.decode(RestaurentPostRoute.self, from: data)
            self.arrTable = listRestaurent!.RestaurentList
            DispatchQueue.main.async {
                self.myTable.reloadData()
            }
       
            print(self.arrTable)

        }).resume()
    }
        
        
    }

