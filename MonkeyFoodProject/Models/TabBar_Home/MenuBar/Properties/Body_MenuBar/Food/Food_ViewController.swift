//
//  Food_ViewController.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 14/04/2021.
//

import UIKit

class Food_ViewController: UIViewController {
//MARK:UI Elements
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
    private let tableview:UITableView = {
       let tableview = UITableView()
        tableview.register(FoodTable_TableViewCell.self, forCellReuseIdentifier: FoodTable_TableViewCell.identifier)
        return tableview
    }()
    
    //MARK:Object LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup_TopView()
        setup_SearchBar()
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

}
