//
//  Toptile_MoreBar_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 13/04/2021.
//

import UIKit

class Toptile_MoreBar_TableViewCell: UITableViewCell {
    
    static let identifier = "Toptile_MoreBar_TableViewCell"
    //MARK:UI Elements
    private let lbl_Toptile_MoreBar :UILabel = {
        let label  = UILabel()
        label.text = "More"
        label.textAlignment = .center
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.titleFontSize_20)
        return label
    }()
    let img_TopTitile_MoreBar:UIImageView = {
        let image = UIImageView()
        image.image = Resource.SourceImage.SourceImageHomeScreen.img_Shopping
       image.isUserInteractionEnabled = true
        
        return image
    }()
    
    //MARK:Object LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()
        setup_lbl_Toptile_MoreBar()
        setup_img_TopTitile_MoreBar()
    }
    
    //MARK:Setup UI Elements
    
    private func setup_lbl_Toptile_MoreBar(){
        contentView.addSubview(lbl_Toptile_MoreBar)
        lbl_Toptile_MoreBar.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_36)
            make.left.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_20)
       })
        
    }
    private func setup_img_TopTitile_MoreBar(){
        contentView.addSubview(img_TopTitile_MoreBar)
        let tapGS_img_TopTitile_ProfileBar = UITapGestureRecognizer(target: self, action: #selector(tap_img_TopTitile_MoreBar))
        img_TopTitile_MoreBar.addGestureRecognizer(tapGS_img_TopTitile_ProfileBar)
        img_TopTitile_MoreBar.isUserInteractionEnabled = true
        img_TopTitile_MoreBar.snp.makeConstraints({(make) in
            make.right.equalToSuperview().offset( -Demension.shared.largeHorizontalMargin_24)
            make.bottom.equalTo(lbl_Toptile_MoreBar)
            
        })
    }
    
    
    @objc func tap_img_TopTitile_MoreBar(){
        print("tap_img_TopTitile_OfferBar")
    }
    
}
