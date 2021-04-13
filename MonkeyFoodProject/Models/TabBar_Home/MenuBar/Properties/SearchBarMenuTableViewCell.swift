//
//  SearchBarMenuTableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 11/04/2021.
//

import UIKit

class SearchBarMenuTableViewCell: UITableViewCell {
    static let identifier = "SearchBarMenuTableViewCell"
    //MARK:UI Elements
    

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
 
        //view tổng của cell
            
            //view  nhỏ chứa các properties
           contentView.addSubview(viewSearch)
        
            viewSearch.snp.makeConstraints({(make) in
                make.bottom.equalToSuperview()
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

