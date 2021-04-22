//
//  FoodTable_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 15/04/2021.
//

import UIKit

class FoodTable_TableViewCell: UITableViewCell {

    static let identifier = "FoodTable_TableViewCell"
    
 
    //MARK:UI Elements
    private let subview:UIView = {
       let view = UIView()
      
        return view
    }()
    
    let imageCellFood:UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()
    
     let lbl_TitleFood:UILabel = {
        let label = UILabel()
        label.text = "Mulberry Pizza by Josh"
        label.textColor = .white
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisExtraBold, size: Demension.shared.messageFontSize_16)
        return label
    }()
  
    private let img_RateStar:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "RateStar")
        image.contentMode = .scaleAspectFit
        return image
    }()
    private let lbl_TotalScore:UILabel = {
        let label = UILabel()
        label.text = "4.9"
        label.textColor = Theme.shared.accentColor
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisBold, size: Demension.shared.captionFontSize_12)
        return label
    }()
    private let lbl_TypeFood:UILabel = {
        let label = UILabel()
        label.text = "French Apple Pie"
        label.textColor = .white
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.captionFontSize_12)
        return label
    }()
    //MARK:Object LifeCycle
    override func layoutSubviews() {
        setup_subview()
        setup_imageCellFood()
        setup_lbl_TitleFood()
        setup_img_RateStar()
        setup_lbl_TotalScore()
        setup_lbl_ResultRatStart()
    }
   
    //MARK:Setup UI Elements
    
    func setup_subview(){
        contentView.addSubview(subview)
        subview.snp.makeConstraints({(make) in
            make.top.width.bottom.equalToSuperview()
        })
        
    }
    func setup_imageCellFood(){
        subview.addSubview(imageCellFood)
        imageCellFood.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.smallVerticalMargin_4)
            make.left.right.bottom.equalToSuperview()
        })
        
    }
    func setup_lbl_TitleFood(){
        imageCellFood.addSubview(lbl_TitleFood)
        lbl_TitleFood.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_130)
            make.left.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_20)
        })
        
    }
    func setup_img_RateStar(){
        imageCellFood.addSubview(img_RateStar)
        img_RateStar.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_TitleFood.snp.bottom).offset(Demension.shared.mediumVerticalMargin_9)
            make.left.equalTo(lbl_TitleFood)
        })
        
    }
    func setup_lbl_TotalScore(){
        imageCellFood.addSubview(lbl_TotalScore)
        lbl_TotalScore.snp.makeConstraints({(make) in
            make.bottom.equalTo(img_RateStar)
            make.left.equalTo(img_RateStar.snp.right).offset(Demension.shared.smallHorizontalMargin_4)
            
        })
        
    }
    func setup_lbl_ResultRatStart(){
        imageCellFood.addSubview(lbl_TypeFood)
        lbl_TypeFood.snp.makeConstraints({(make) in
            make.bottom.equalTo(img_RateStar)
            make.left.equalTo(lbl_TotalScore.snp.right).offset(Demension.shared.smallHorizontalMargin_4)
            
        })
        
    }
}


