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
         
         return label
     }()
     let lbl_DropListDown:UILabel = {
        let label = UILabel()
         
         return label
     }()
     let arrowDroplistdown:UIImageView = {
        let image = UIImageView()
         
         return image
     }()
     
    
     
     public func configure(){
         
         contentView.addSubview(lbl_topTextTitle)
         lbl_topTextTitle.text = "Delivering to"
         lbl_topTextTitle.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: -Demension.shared.smallCaptionFontSize_10)
         
         
         contentView.addSubview(lbl_DropListDown)
         lbl_DropListDown.text = "Current Location"
         lbl_DropListDown.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisBold, size: Demension.shared.bodyFontSize_16)
         lbl_topTextTitle.textAlignment = .center

         contentView.addSubview(arrowDroplistdown)
         arrowDroplistdown.image =  Resource.SourceImage.SourceImageHomeScreen.img_arrowDroplistdown
         arrowDroplistdown.contentMode = .scaleAspectFit
         
     }
    //MARK:Object LifeCycle
  
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    

    }
 
    //MARK:Setup UI Elements

    func setupUI() {
        
           self.addSubview(lbl_topTextTitle)
           lbl_topTextTitle.snp.makeConstraints { (make) in
            make.bottom.equalTo(lbl_DropListDown.snp.top).offset(-Demension.shared.mediumVerticalMargin_8)
            make.left.equalTo(lbl_DropListDown)
           
           }
        self.addSubview(lbl_DropListDown)
        lbl_DropListDown.addSubview(arrowDroplistdown)
        lbl_DropListDown.snp.makeConstraints({(make) in
            make.width.equalTo(Demension.shared.largeHorizontalMargin_176)
            make.bottom.left.equalToSuperview()
            arrowDroplistdown.snp.makeConstraints({(make) in
                make.top.right.bottom.equalToSuperview()
            })
        })
       }
    
}
