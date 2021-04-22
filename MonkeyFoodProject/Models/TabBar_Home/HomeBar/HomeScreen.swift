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
    let arrImg = ["2222","3333","4444","2222","3333","4444","2222","3333","4444","2222","3333","4444","2222","3333","4444","s1","s2","s3","s4"]
    
    //MARK:UI Elements
    
    var array = ["1","","1","1","","1","1","","1","1","","1","","1","1","","1","","1","1","","1","","1","1","","1","","1","1","","1"]
  
 
    
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
          
          
            return cell
        }
        
         if indexPath.row  == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: SecondTableViewCell.identifier, for: indexPath) as! SecondTableViewCell
            cell.configure()
       
            return cell
        }
        
        if indexPath.row  == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: SearchBarTableViewCell.identifier, for: indexPath) as! SearchBarTableViewCell
            
           
            return cell
        }
         if indexPath.row  == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as! CollectionViewTableViewCell
            cell.imageView?.image = UIImage(named: "Logo")
//
            
           
            return cell
        }
        if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TitileMiddle_cell5_TableViewCell.identifier, for: indexPath) as! TitileMiddle_cell5_TableViewCell
           
           
            return cell
        }
        if indexPath.row <= 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: RecomendFoodTableViewCell.identifier, for: indexPath) as! RecomendFoodTableViewCell
                //image
            let urlhinh = Config.serverURL + "/upload/" + arrRecommendRestaurent[indexPath.row].Image
            do {
                let data = try Data(contentsOf: URL(string: urlhinh)!)
                cell.img_Food.image = UIImage(data: data)
            }catch { }
                //text
            cell.lbl_TitleFood.text = arrRecommendRestaurent[indexPath.row].Name
           
            return cell
        }
        
        if indexPath.row == 8 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Title_Footer_TableViewCell.identifier, for: indexPath) as! Title_Footer_TableViewCell
          
            return cell
        }
        else if indexPath.row <= 11 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Footer_Tableview_TableViewCell.identifier, for: indexPath) as! Footer_Tableview_TableViewCell
            cell.img_Food.image = UIImage(named: arrImg[indexPath.row])
            cell.img_Food.contentMode = .scaleAspectFill
         
            return cell
        }
     
       
     
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeScreenTableViewCell", for: indexPath)
          
             
            return cell
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
        if indexPath.row <= 7 {
            return 274
        }
        if indexPath.row == 8 {
            return 71
        }
        if indexPath.row <= 11 {
            return 107
        }
        
        return 0
    }
    
    
  
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

