//
//  Toptitle_ProfileBar_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 12/04/2021.
//

import UIKit

class Toptitle_ProfileBar_TableViewCell: UITableViewCell {

  static let identifier = "Toptitle_ProfileBar_TableViewCell"
    
    //MARK:UI Elements
private let lbl_Toptile_ProfileBar :UILabel = {
    let label  = UILabel()
    label.text = "Profile"
    
    label.textAlignment = .center
    label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.titleFontSize_20)
    return label
}()
let img_TopTitile_ProfileBar:UIImageView = {
    let image = UIImageView()
    image.image = Resource.SourceImage.SourceImageHomeScreen.img_Shopping
 
    image.isUserInteractionEnabled = true
  
    return image
}()

    //MARK:Object LifeCycle
override func layoutSubviews() {
    super.layoutSubviews()
    setup_lbl_Toptile_ProfileBar()
    setup_img_TopTitile_ProfileBar()
}
   
    //MARK:Setup UI Elements

private func setup_lbl_Toptile_ProfileBar(){
    contentView.addSubview(lbl_Toptile_ProfileBar)
    lbl_Toptile_ProfileBar.snp.makeConstraints({(make) in
        make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_36)
        make.left.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_20)
        
        
    })
   
}
private func setup_img_TopTitile_ProfileBar(){
    contentView.addSubview(img_TopTitile_ProfileBar)
    img_TopTitile_ProfileBar.isUserInteractionEnabled = true
    let tapGS_img_TopTitile_ProfileBar = UITapGestureRecognizer(target: self, action: #selector(tap_img_TopTitile_ProfileBar))
    img_TopTitile_ProfileBar.addGestureRecognizer(tapGS_img_TopTitile_ProfileBar)
 
    img_TopTitile_ProfileBar.snp.makeConstraints({(make) in
        make.right.equalToSuperview().offset( -Demension.shared.largeHorizontalMargin_24)
        make.bottom.equalTo(lbl_Toptile_ProfileBar)
        
    })
}
@objc func tap_img_TopTitile_ProfileBar(){
    print("tap_img_TopTitile_OfferBar")
}


}
