//
//  ButtonCheck_OfferTabbar_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 12/04/2021.
//

import UIKit

class ButtonCheck_OfferTabbar_TableViewCell: UITableViewCell {
    static let identifier = "ButtonCheck_OfferTabbar_TableViewCell"
  
    //MARK:Object LifeCycle
  
    override func layoutSubviews() {
        super.layoutSubviews()
        setup_button_CheckOffer()
        
    }
    //MARK:UI Elements
    
    private let button_CheckOffer:UIButton = {
       let button = UIButton()
        button.backgroundColor = Theme.shared.accentColor
        button.layer.cornerRadius = 14
        button.setTitle("Check Offers", for: .normal)
        button.titleLabel?.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisSemiBold, size:Demension.shared.smallCaptionFontSize_11)
        button.titleLabel?.textColor = .black
       
        return button
    }()
    @objc func tap_button_CheckOffer(){
        print("tap_button_CheckOffer")
    }
    
    //MARK:Setup UI Elements
    private func setup_button_CheckOffer(){
        contentView.addSubview(button_CheckOffer)
        button_CheckOffer.addTarget(self, action: #selector(tap_button_CheckOffer), for: .touchUpInside)
        button_CheckOffer.snp.makeConstraints({(make) in
            make.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_20)
            make.height.equalTo(Demension.shared.largeVerticalMargin_28)
            make.width.equalTo(Demension.shared.largeHorizontalMargin_157)
            
        })
    }
}
