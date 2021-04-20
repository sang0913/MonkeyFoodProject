//
//  RecomendFoodTableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 11/04/2021.
//

import UIKit

class RecomendFoodTableViewCell: UITableViewCell {
    
    static let identifier = "RecomendFoodTableViewCell"
    
    //MARK:UI Elements
    private let subview : UIView = {
        let view = UIView()
        return view
    }()
    public let img_Food:UIImageView = {
        let image = UIImageView()
        
//        let urlhinh = "http://192.168.1.2:3000/upload/1617866248178-avatar.png"
//        do {
//            let data = try Data(contentsOf: URL(string: urlhinh)!)
//            image.image = UIImage(data: data)
//        }catch { }
//
//
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        return image
    }()
   let lbl_TitleFood:UILabel = {
        let label = UILabel()
       
        
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisExtraBold, size: Demension.shared.messageFontSize_16)
        return label
    }()
    
    private let img_RateStar:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "RateStar")
        image.contentMode = .scaleAspectFit
        return image
    }()
    private let lbl_ResultRatStart:UILabel = {
        let label = UILabel()
        label.text = "(124 ratings) Café     Western Food"
        
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
            make.top.left.right.height.bottom.equalToSuperview()
          
            
        })
        subview.addSubview(img_Food)
       
        img_Food.snp.makeConstraints({(make) in
            make.left.right.equalToSuperview()
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_32)
            make.height.equalTo(Demension.shared.largeVerticalMargin_193)
            
        })
        subview.addSubview(lbl_TitleFood)
       
        lbl_TitleFood.snp.makeConstraints({(make) in
            make.top.equalTo(img_Food.snp.bottom).offset(8)
            make.left.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_20)
            
        })
        subview.addSubview(img_RateStar)
        img_RateStar.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_TitleFood.snp.bottom).offset(Demension.shared.mediumVerticalMargin_8)
            make.left.equalTo(lbl_TitleFood)
            
        })
        subview.addSubview(lbl_ResultRatStart)
       
        lbl_ResultRatStart.snp.makeConstraints({(make) in
            make.bottom.equalTo(img_RateStar)
            make.left.equalTo(img_RateStar.snp.right).offset(4)
        })
     
        
    }
    
    
    
}
