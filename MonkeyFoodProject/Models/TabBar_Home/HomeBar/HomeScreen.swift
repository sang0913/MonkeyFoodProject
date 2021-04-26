//
//  HomeScreen.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 09/04/2021.
//

import UIKit

class HomeScreenViewcontroller:UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    var arrColection:[FoodCountry] = []
    var arrRecommendRestaurent:[Restaurents] = []
    
    
    //MARK:UI Elements
      
    private let myTable:UITableView = {
        let table = UITableView()
        
        table.separatorInset = .zero
        table.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
        
        table.register(HomeScreenTableViewCell.self, forCellReuseIdentifier: HomeScreenTableViewCell.identifier)
        table.register(SecondTableViewCell.self, forCellReuseIdentifier: SecondTableViewCell.identifier)
        table.register(SearchBarTableViewCell.self, forCellReuseIdentifier: SearchBarTableViewCell.identifier)
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        table.register(TitileMiddle_cell5_TableViewCell.self, forCellReuseIdentifier: TitileMiddle_cell5_TableViewCell.identifier)
        table.register(RecomendFoodTableViewCell.self, forCellReuseIdentifier: RecomendFoodTableViewCell.identifier)
        table.register(Title_Footer_TableViewCell.self, forCellReuseIdentifier:Title_Footer_TableViewCell.identifier)
        
        table.register(Footer_Tableview_TableViewCell.self, forCellReuseIdentifier:Footer_Tableview_TableViewCell.identifier)
        
        return table
    }()
    
    //MARK:Object LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myTable)
        
        myTable.frame  = view.bounds
        myTable.dataSource = self
        myTable.delegate = self
        
        loadDataRestaurents()
    }
    
    //MARK:Setup UI Elements
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return arrRecommendRestaurent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row  == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: HomeScreenTableViewCell.identifier, for: indexPath) as! HomeScreenTableViewCell
            cell.configure()
            cell.selectionStyle = .none
            
            return cell
        }
        
        if indexPath.row  == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: SecondTableViewCell.identifier, for: indexPath) as! SecondTableViewCell
            cell.configure()
            cell.selectionStyle = .none
            return cell
        }
        
        if indexPath.row  == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: SearchBarTableViewCell.identifier, for: indexPath) as! SearchBarTableViewCell
            
            cell.selectionStyle = .none
            return cell
        }
        if indexPath.row  == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as! CollectionViewTableViewCell
            
            return cell
        }
        if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TitileMiddle_cell5_TableViewCell.identifier, for: indexPath) as! TitileMiddle_cell5_TableViewCell
            
            
            return cell
        }
        if indexPath.row <= 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: RecomendFoodTableViewCell.identifier, for: indexPath) as! RecomendFoodTableViewCell
            let queueImg = DispatchQueue.init(label: "queueImg")
            queueImg.async {
                //image
                
                let urlhinh = Config.serverURL + "/upload/" + self.arrRecommendRestaurent[indexPath.row].Image
                do {
                    let data = try Data(contentsOf: URL(string: urlhinh)!)
                    DispatchQueue.main.async {
                        cell.img_Food.image = UIImage(data: data)
                        cell.lbl_TitleFood.text = self.arrRecommendRestaurent[indexPath.row].Name
                    }
                }catch { }
                //text
                
            }
     
            cell.selectionStyle = .none
            
            
            
            return cell
        }
        
        
        if indexPath.row == 8 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Title_Footer_TableViewCell.identifier, for: indexPath) as! Title_Footer_TableViewCell
            cell.selectionStyle = .none
            return cell
        }
        else if indexPath.row <= 11 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Footer_Tableview_TableViewCell.identifier, for: indexPath) as! Footer_Tableview_TableViewCell
            let queueImg = DispatchQueue.init(label: "queueImg")
            queueImg.async {
                let urlhinh = Config.serverURL + "/upload/" + self.arrRecommendRestaurent[indexPath.row].Image
                do {
                    let data = try Data(contentsOf: URL(string: urlhinh)!)
                    DispatchQueue.main.async {
                        cell.img_Food.image = UIImage(data: data)
                        cell.lbl_FoodName.text = self.arrRecommendRestaurent[indexPath.row].Name
                    }
                }catch { }
                //text
                
            }
       
            cell.selectionStyle = .none
            return cell
            
            
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeScreenTableViewCell.identifier, for: indexPath)
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //title
        if indexPath.row == 0 {
            return Demension.shared.largeVerticalMargin_60
        }
        //choose location
        if indexPath.row == 1 {
            return Demension.shared.largeVerticalMargin_60
        }
        //search
        if indexPath.row == 2 {
            return Demension.shared.largeVerticalMargin_60
        }
        //colectionview
        if indexPath.row == 3 {
            return   Demension.shared.largeVerticalMargin_143
            
        }
        //title Restaurent
        if indexPath.row == 4 {
            return Demension.shared.normalVerticalMargin_20
        }
        //3 cell tableview
        if indexPath.row <= 7 {
            return  Demension.shared.largeVerticalMargin_274
            
        }
        //title
        if indexPath.row == 8 {
            return Demension.shared.largeVerticalMargin_75
        }
        
        //3 cell tableview footer
        if indexPath.row <= 11 {
            return   Demension.shared.largeVerticalMargin_107
            
        }
        
        return 0
    }
    
    
    //MARK:Post to server
    private func loadDataRestaurents(){
        let url = URL(string: Config.serverURL + "/Restaurents")
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        URLSession.shared.dataTask(with: request, completionHandler: { data , response, error in
            guard error == nil else { print("error"); return }
            guard let data = data else { return }
            
            let jsonDecoder = JSONDecoder()
            let listRestaurent = try? jsonDecoder.decode(RestaurentPostRoute.self, from: data)
            self.arrRecommendRestaurent = listRestaurent!.RestaurentList
            DispatchQueue.main.async {
                self.myTable.reloadData()
            }
        }).resume()
    }
    
    
    
    
    
}

