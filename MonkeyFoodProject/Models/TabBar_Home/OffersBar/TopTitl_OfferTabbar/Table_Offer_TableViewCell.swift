//
//  Table_Offer_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 12/04/2021.
//

import UIKit

class Table_Offer_TableViewCell: UITableViewCell {
    static let identifier = "Table_Offer_TableViewCell"

    //MARK:UI Elements

    private let img_Food_Offers:UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "7C4F96BD-AF2D-4FCD-843B-FABBD3A3B4B6_1_105_c")
     
        image.contentMode = .scaleToFill
        return image
    }()
    private let lbl_TitleFood_Offers:UILabel = {
        let label = UILabel()
        label.text = "Café de Noires"
        
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisExtraBold, size: Demension.shared.messageFontSize_16)
        return label
    }()
   
    private let img_RateStar_Offers:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "RateStar")
        image.contentMode = .scaleAspectFit
        return image
    }()
    private let lbl_TotalScore_Offers:UILabel = {
        let label = UILabel()
        label.text = "4.9"
        label.textColor = Theme.shared.accentColor
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisBold, size: Demension.shared.captionFontSize_12)
        return label
    }()
    private let lbl_ResultRatStart_Offers:UILabel = {
        let label = UILabel()
        label.text = "(124 ratings)"
        
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.captionFontSize_12)
        return label
    }()
    private let lbl_TypeFood_Offers:UILabel = {
        let label = UILabel()
        label.text = "Café  Western Food"
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.captionFontSize_12)
        return label
    }()
    //MARK:Object LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()
        setu_img_Food_Offers()
        setup_lbl_TitleFood_Offers()
        setup_img_RateStar_Offers()
        setup_lbl_TotalScore_Offers()
        setup_lbl_ResultRatStart_Offers()
        setup_lbl_TypeFood_Offers()
    }
    //MARK:Setup UI Elements
    
    private func setu_img_Food_Offers(){
        contentView.addSubview(img_Food_Offers)
        img_Food_Offers.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_22)
            make.width.equalToSuperview()
            make.height.equalTo(Demension.shared.largeVerticalMargin_193)
            
        })
    }
    
    
    //4 target
    private func setup_lbl_TitleFood_Offers(){
        contentView.addSubview(lbl_TitleFood_Offers)
        lbl_TitleFood_Offers.snp.makeConstraints({(make) in
            make.top.equalTo(img_Food_Offers.snp.bottom).offset(Demension.shared.normalVerticalMargin_12)
            make.left.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_20)
        })
    }
    private func setup_img_RateStar_Offers(){
        contentView.addSubview(img_RateStar_Offers)
        img_RateStar_Offers.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_TitleFood_Offers.snp.bottom).offset(Demension.shared.smallVerticalMargin_7)
            make.left.equalTo(lbl_TitleFood_Offers)
        })
    }
    private func setup_lbl_TotalScore_Offers(){
        contentView.addSubview(lbl_TotalScore_Offers)
        lbl_TotalScore_Offers.snp.makeConstraints({(make) in
            make.bottom.equalTo(img_RateStar_Offers)
            make.left.equalTo(img_RateStar_Offers.snp.right).offset(Demension.shared.smallHorizontalMargin_4)
        })
    }
    private func setup_lbl_ResultRatStart_Offers(){
        contentView.addSubview(lbl_ResultRatStart_Offers)
        lbl_ResultRatStart_Offers.snp.makeConstraints({(make) in
            make.bottom.equalTo(img_RateStar_Offers)
            make.left.equalTo(lbl_TotalScore_Offers.snp.right).offset(Demension.shared.smallHorizontalMargin_4)
        })
    }
    private func setup_lbl_TypeFood_Offers(){
        contentView.addSubview(lbl_TypeFood_Offers)
        lbl_TypeFood_Offers.snp.makeConstraints({(make) in
            make.bottom.equalTo(img_RateStar_Offers)
            make.left.equalTo(lbl_ResultRatStart_Offers.snp.right).offset(Demension.shared.smallHorizontalMargin_4)
        })
    }
    
}
