//
//  Footer_Tableview_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 11/04/2021.
struct ListRecommendFood {
    var image: String
    var Title : String
    var discription: String
    var countRatingStart: String
    init(img: String, title: String, discription: String, counRaing: String) {
        self.image = img
        self.Title = title
        self.discription = discription
        self.countRatingStart = counRaing
    }
}

import UIKit

class Footer_Tableview_TableViewCell: UITableViewCell {
static let identifier = "Footer_Tableview_TableViewCell"
    var arrRecomendFood:[ListRecommendFood] = [
        ListRecommendFood(img: "2222", title: "Mulberry Pizza by Josh", discription: "Café     Western Food", counRaing: "(124 Ratings)")
    ]
   
    //MARK:UI Elements
    private let subview : UIView = {
        let view = UIView()
        
        return view
    }()
     let img_Food:UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "7C4F96BD-AF2D-4FCD-843B-FABBD3A3B4B6_1_105_c")
        image.backgroundColor = .red
    
        return image
    }()
    private let lbl_TitleFood:UILabel = {
        let label = UILabel()
        label.text = "Mulberry Pizza by Josh"
        
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisExtraBold, size: Demension.shared.messageFontSize_16)
        return label
    }()
    private let lbl_TypeFood:UILabel = {
        let label = UILabel()
        label.text = "Café  Western Food"
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.captionFontSize_12)
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
            make.top.left.right.height.bottom.equalToSuperview()
       
            
        })
        subview.addSubview(img_Food)
        
        img_Food.snp.makeConstraints({(make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_32)
            make.height.equalTo(Demension.shared.largeVerticalMargin_75)
          
            
        })
        subview.addSubview(lbl_TitleFood)
        lbl_TitleFood.snp.makeConstraints({(make) in
            make.top.equalTo(img_Food)
            
            make.left.equalTo(img_Food.snp.right).offset(Demension.shared.normalHorizontalMargin_20)

        })
        subview.addSubview(lbl_TypeFood)
        lbl_TypeFood.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_TitleFood.snp.bottom).offset(Demension.shared.mediumVerticalMargin_8)
            make.left.equalTo(lbl_TitleFood)

        })
        subview.addSubview(img_RateStar)
        img_RateStar.snp.makeConstraints({(make) in
            make.left.equalTo(lbl_TypeFood)
            make.top.equalTo(lbl_TypeFood.snp.bottom).offset(Demension.shared.smallVerticalMargin_6)
        })
        subview.addSubview(lbl_TotalScore)
        lbl_TotalScore.snp.makeConstraints({(make) in
            make.left.equalTo(img_RateStar.snp.right).offset(Demension.shared.smallHorizontalMargin_4)
            make.bottom.equalTo(img_RateStar)
            
        })
        subview.addSubview(lbl_ResultRatStart)
        lbl_ResultRatStart.snp.makeConstraints({(make) in
            make.left.equalTo(lbl_TotalScore.snp.right).offset(Demension.shared.smallHorizontalMargin_4)
            make.bottom.equalTo(lbl_TotalScore)
            
        })
        
    }
    
}
