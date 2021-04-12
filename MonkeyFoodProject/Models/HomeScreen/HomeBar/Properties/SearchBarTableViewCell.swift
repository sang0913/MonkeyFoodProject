//
//  SearchBarTableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 10/04/2021.
//

import UIKit

class SearchBarTableViewCell: UITableViewCell {
    
    //MARK:UI Elements
    
    static let identifier = "SearchBarTableViewCell"
    
    let largView:UIView = {
        let label = UIView()
        
        return label
    }()
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

    //MARK:Object LifeCycle
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    
    //MARK:Setup UI Elements
    
    func setupUI() {
        
        self.addSubview(largView)
     

        //view tổng của cell
        largView.snp.makeConstraints { (make) in
            
            make.top.bottom.height.equalToSuperview()
            make.width.equalTo(Demension.shared.widthScale * 333)
            make.center.equalToSuperview()
            //view  nhỏ chứa các properties
            largView.addSubview(viewSearch)
            viewSearch.snp.makeConstraints({(make) in
                make.bottom.equalToSuperview()
                make.width.equalToSuperview()
                make.height.equalTo(Demension.shared.largeVerticalMargin_42)
                //imge
                largView.addSubview(img_Search)
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
    
}
