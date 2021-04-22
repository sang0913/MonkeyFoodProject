//
//  Food_ViewController.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 14/04/2021.
//

import UIKit

class Food_ViewController: UIViewController {
    //MARK:UI Elements
    
    var arrFood:[FoodMenu] = []
    //Top title
    private let viewTitle: UIView = {
        let view = UIView()
        
        return view
    }()
    let lbl_topTextTitle:UILabel = {
        let lable = UILabel()
        lable.text = "Food"
        lable.sizeToFit()
        lable.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisBold, size: Demension.shared.titleFontSize_24)
        return lable
    }()
    
    let img_TopTitile_Arow:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "a1")
        image.contentMode = .scaleAspectFit
        return image
    }()
    let img_TopTitile:UIImageView = {
        let image = UIImageView()
        image.image = Resource.SourceImage.SourceImageHomeScreen.img_Shopping
        
        image.isUserInteractionEnabled = true
        
        
        return image
    }()
    
    private let mytable: UITableView = {
        let table = UITableView()
        table.register(FoodTable_TableViewCell.self, forCellReuseIdentifier: FoodTable_TableViewCell.identifier) as? FoodTable_TableViewCell
        
        return table
    }()
    @objc func tapLogoShopping(){
        print("tapLogoShopping")
        
    }
    
    //SearchBar
    let viewSearch:UIView = {
        let label = UIView()
        label.backgroundColor = Theme.shared.backgroundColorTextField
        label.layer.cornerRadius = Demension.shared.superCornerRadius
        return label
    }()
    let img_Search:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "imageSearch")
        return image
    }()
    let textField_Search : UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "Search food"
        return textfield
    }()
    
    //tableview
    private let tableviewFood:UITableView = {
        let tableview = UITableView()
        tableview.register(FoodTable_TableViewCell.self, forCellReuseIdentifier: FoodTable_TableViewCell.identifier)
        return tableview
    }()
    
    //MARK:Object LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableviewFood.dataSource = self
        tableviewFood.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setup_TopView()
        setup_SearchBar()
        setupTableFood()
     
        loadDataRestaurents()
    }
    //MARK:Setup UI Elements
    
    
    func setup_TopView() {
        //lable
        view.addSubview(viewTitle)
        viewTitle.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_30)
            make.left.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_20)
            make.width.equalTo(Demension.shared.largeHorizontalMargin_120)
            make.height.equalTo(Demension.shared.largeVerticalMargin)
        })
        
        viewTitle.addSubview(img_TopTitile_Arow)
        img_TopTitile_Arow.snp.makeConstraints({(make) in
            
            make.left.top.bottom.equalToSuperview()
            make.width.equalTo(Demension.shared.normalHorizontalMargin_11)
        })
        
        viewTitle.addSubview(lbl_topTextTitle)
        lbl_topTextTitle.snp.makeConstraints { (make) in
            
            make.left.equalTo(img_TopTitile_Arow.snp.right).offset(Demension.shared.normalHorizontalMargin_20)
            make.bottom.equalToSuperview()
            
        }
        
        //image
        view.addSubview(img_TopTitile)
        let imageShopping = UITapGestureRecognizer(target: self, action: #selector(tapLogoShopping))
        img_TopTitile.addGestureRecognizer(imageShopping)
        img_TopTitile.snp.makeConstraints({(make) in
            make.bottom.equalTo(lbl_topTextTitle)
            make.right.equalToSuperview().offset(-Demension.shared.normalHorizontalMargin_20)
            
        })
        
    }
    
    func setup_SearchBar() {
        view.addSubview(viewSearch)
        
        viewSearch.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_topTextTitle.snp.bottom).offset(Demension.shared.largeVerticalMargin_22)
            make.width.equalTo(Demension.shared.defaultWidthButton_333)
            make.height.equalTo(Demension.shared.largeVerticalMargin_42)
            make.centerX.equalToSuperview()
            //imge
            viewSearch.addSubview(img_Search)
            img_Search.snp.makeConstraints({( make) in
                make.left.equalTo(Demension.shared.normalHorizontalMargin_20)
                make.centerY.equalTo(viewSearch)
            })
            //textField
            viewSearch.addSubview(textField_Search)
            textField_Search.snp.makeConstraints({(make) in
                make.left.equalTo(img_Search.snp.right).offset(Demension.shared.normalHorizontalMargin_16)
                make.centerY.equalTo(viewSearch)
            })
            
        })
    }
    private func setupTableFood(){
        view.addSubview(tableviewFood)
        tableviewFood.snp.makeConstraints({(make) in
            make.top.equalTo(viewSearch.snp.bottom).offset(Demension.shared.normalVerticalMargin_20)
            make.width.bottom.equalToSuperview()
            
        })
    }
    
}

extension Food_ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrFood.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row <= 3{
           
            let cell = tableView.dequeueReusableCell(withIdentifier: "FoodTable_TableViewCell") as! FoodTable_TableViewCell
            cell.textLabel?.text = "te"
            //image
            let urlhinh = Config.serverURL + "/upload/" + arrFood[indexPath.row].Image
        do {
            let data = try Data(contentsOf: URL(string: urlhinh)!)
            cell.imageCellFood.image = UIImage(data: data)
        }catch { }
            //text
            cell.lbl_TitleFood.text = arrFood[indexPath.row].FoodName
        
            return cell
        }
    
    else{
    let cell = tableView.dequeueReusableCell(withIdentifier: "FoodTable_TableViewCell", for: indexPath)
    cell.separatorInset = .zero
    
    return cell
    }
    
}
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row <= 3 {
            return 197
        }
        return 0
    }
  
    private func loadDataRestaurents(){
        let url = URL(string: Config.serverURL + "/Food")
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        URLSession.shared.dataTask(with: request, completionHandler: { data , response, error in
            guard error == nil else { print("error"); return }
            guard let data = data else { return }

            let jsonDecoder = JSONDecoder()
            let listFood = try? jsonDecoder.decode(FoodPostRoute.self, from: data)
            self.arrFood = listFood!.FoodList
            DispatchQueue.main.async {
                self.tableviewFood.reloadData()
            }
       


        }).resume()
    }
}
