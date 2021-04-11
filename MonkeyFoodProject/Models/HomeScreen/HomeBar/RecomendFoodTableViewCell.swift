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
   private let img_Food:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Logo")
    image.backgroundColor = .red
    image.contentMode = .scaleAspectFit
        return image
    }()
    private let lbl_TitleFood:UILabel = {
        let label = UILabel()
        label.text = "Minute by tuk tuk"
      
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
        contentView.addSubview(img_Food)
      
        img_Food.snp.makeConstraints({(make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(Demension.shared.largeVerticalMargin_193)
            
        })
        contentView.addSubview(lbl_TitleFood)
        lbl_TitleFood.snp.makeConstraints({(make) in
            make.top.equalTo(img_Food.snp.bottom).offset(Demension.shared.mediumVerticalMargin_8)
            make.left.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_20)
            
        })
        contentView.addSubview(img_RateStar)
        img_RateStar.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_TitleFood.snp.bottom).offset(Demension.shared.mediumVerticalMargin_8)
            make.left.equalTo(lbl_TitleFood)
            
        })
        contentView.addSubview(lbl_ResultRatStart)
        lbl_ResultRatStart.snp.makeConstraints({(make) in
           make.bottom.equalTo(img_RateStar)
            make.left.equalTo(img_RateStar.snp.right).offset(4)
        })
        
    }
    
    

}
