//
//  Footer_Tableview_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 11/04/2021.

import UIKit

class Footer_Tableview_TableViewCell: UITableViewCell {
static let identifier = "Footer_Tableview_TableViewCell"
    
    //MARK:UI Elements
    private let subview : UIView = {
        let view = UIView()
        return view
    }()
    public let img_Food:UIImageView = {
        let image = UIImageView()
       image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        image.layer.cornerRadius = Demension.shared.normalCornerRadius
        return image
    }()
   let lbl_FoodName:UILabel = {
        let label = UILabel()
 
        
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisExtraBold, size: Demension.shared.messageFontSize_16)
        return label
    }()
    let lbl_FoodType:UILabel = {
         let label = UILabel()
     label.text = "Café     Western Food"
         
         label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.smallCaptionFontSize_11)
         return label
     }()
    private let img_RateStar:UIImageView = {
        let image = UIImageView()
        image.image = Resource.SourceTabbarScreen.tabbarOffers.img_RateStar
        image.contentMode = .scaleAspectFit
        return image
    }()
    private let lbl_ResultRatStart:UILabel = {
        let label = UILabel()
        label.text = "(124 ratings)"
        
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.captionFontSize_12)
        return label
    }()
    
    //MARK:Object LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
     
    }
    
    //MARK:Setup UI Elements
    
    func setupUI(){
        contentView.addSubview(subview)
       
        subview.snp.makeConstraints({(make) in
            make.right.height.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_20)
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_30)
         })
        subview.addSubview(img_Food)
      
        img_Food.snp.makeConstraints({(make) in
            make.top.left.equalToSuperview()
            make.width.equalTo(Demension.shared.largeHorizontalMargin_75)
            make.height.equalTo(Demension.shared.largeVerticalMargin_75)
        })
        subview.addSubview(lbl_FoodName)
        lbl_FoodName.snp.makeConstraints({(make) in
            make.top.equalTo(img_Food)
          
            make.left.equalTo(img_Food.snp.right).offset(Demension.shared.normalHorizontalMargin_20)
            
        })
        
        subview.addSubview(lbl_FoodType)
        lbl_FoodType.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_FoodName.snp.bottom).offset(Demension.shared.mediumVerticalMargin_8)
            
            make.left.equalTo(lbl_FoodName)
            
        })
        subview.addSubview(img_RateStar)
        img_RateStar.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_FoodType.snp.bottom).offset(Demension.shared.smallVerticalMargin_6)
            
            make.left.equalTo(lbl_FoodType)
            
        })
        subview.addSubview(lbl_ResultRatStart)
        lbl_ResultRatStart.snp.makeConstraints({(make) in
            make.top.equalTo(img_RateStar)
            make.left.equalTo(img_RateStar.snp.right).offset(Demension.shared.smallHorizontalMargin_6)
            
        })
    }
    
}

