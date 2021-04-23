//
//  SecondTableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 10/04/2021.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
     //MARK:UI Elements
     
     static let identifier = "SecondTableViewCell"
     
     let lbl_topTextTitle:UILabel = {
          let label = UILabel()
          label.text = Resource.SourceTabbarScreen.tabbarHome.lbl_topTextTitle
          label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: -Demension.shared.smallCaptionFontSize_10)
          label.textAlignment = .center
          return label
     }()
     let lbl_DropListDown:UILabel = {
          let label = UILabel()
          label.text = Resource.SourceTabbarScreen.tabbarHome.lbl_DropListDown
          label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisBold, size: Demension.shared.bodyFontSize_16)
          return label
     }()
     let arrowDroplistdown:UIImageView = {
          let image = UIImageView()
          image.image =  Resource.SourceImage.SourceImageHomeScreen.img_arrowDroplistdown
          image.contentMode = .scaleAspectFit
          return image
     }()
     
     public func configure(){
          
     }
     //MARK:Object LifeCycle
     
     override func layoutSubviews() {
          super.layoutSubviews()
          setupUI()
          
     }
     
     //MARK:Setup UI Elements
     
     func setupUI() {
          contentView.addSubview(lbl_topTextTitle)
          contentView.addSubview(lbl_DropListDown)
          lbl_topTextTitle.snp.makeConstraints { (make) in
               make.bottom.equalTo(lbl_DropListDown.snp.top).offset(-Demension.shared.mediumVerticalMargin_8)
               make.left.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_20)
               
          }
          
          lbl_DropListDown.snp.makeConstraints({(make) in
               make.width.equalTo(Demension.shared.largeHorizontalMargin_176)
               make.bottom.equalToSuperview()
               make.left.equalTo(lbl_topTextTitle)
          
               lbl_DropListDown.addSubview(arrowDroplistdown)
               arrowDroplistdown.snp.makeConstraints({(make) in
                    make.top.right.bottom.equalToSuperview()
               })
          })
     }
     
}
