//
//  Toptitle_OfferTabbar)TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 12/04/2021.
//

import UIKit

class Toptitle_OfferTabbar_TableViewCell: UITableViewCell {
    static let identifier = "Toptitle_OfferTabbar_TableViewCell"
        //MARK:UI Elements
    private let lbl_Toptile_OfferBar :UILabel = {
        let label  = UILabel()
        label.text = "Latest Offers"
        
        label.textAlignment = .center
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.titleFontSize_20)
        return label
    }()
    let img_TopTitile_OfferBar:UIImageView = {
        let image = UIImageView()
        image.image = Resource.SourceImage.SourceImageHomeScreen.img_Shopping
     
        image.isUserInteractionEnabled = true
      
        return image
    }()
    
    private let lbl_ToptileDiscription_OfferBar :UILabel = {
        let label  = UILabel()
        label.text = "Find discounts, Offers special meals and more!"
        label.numberOfLines = 2
      
        label.textAlignment = .left
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.captionFontSize_14)
        return label
    }()
        //MARK:Object LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setup_lbl_Toptile_OfferBar()
        setup_img_TopTitile_OfferBar()
        setup_lbl_ToptileDiscription_OfferBar()
    }
       
        //MARK:Setup UI Elements

    private func setup_lbl_Toptile_OfferBar(){
        contentView.addSubview(lbl_Toptile_OfferBar)
        lbl_Toptile_OfferBar.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_36)
            make.left.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_20)
            
            
        })
       
    }
    private func setup_img_TopTitile_OfferBar(){
        contentView.addSubview(img_TopTitile_OfferBar)
        let tapGS_img_TopTitile_OfferBar = UITapGestureRecognizer(target: self, action: #selector(tap_img_TopTitile_OfferBar))
        img_TopTitile_OfferBar.addGestureRecognizer(tapGS_img_TopTitile_OfferBar)
        img_TopTitile_OfferBar.isUserInteractionEnabled = true
        img_TopTitile_OfferBar.snp.makeConstraints({(make) in
            make.right.equalToSuperview().offset( -Demension.shared.largeHorizontalMargin_24)
            make.bottom.equalTo(lbl_Toptile_OfferBar)
            
        })
    }
    @objc func tap_img_TopTitile_OfferBar(){
        print("tap_img_TopTitile_OfferBar")
    }
    private func setup_lbl_ToptileDiscription_OfferBar(){
        contentView.addSubview(lbl_ToptileDiscription_OfferBar)
        lbl_ToptileDiscription_OfferBar.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_Toptile_OfferBar.snp.bottom).offset(Demension.shared.normalVerticalMargin_16)
            make.left.equalTo(lbl_Toptile_OfferBar)
            make.bottom.equalToSuperview()
            make.width.equalTo(Demension.shared.largeHorizontalMargin_250)
        })
    }
    
}
