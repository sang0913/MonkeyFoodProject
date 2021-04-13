//
//  HomeScreenTableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 09/04/2021.
//

import UIKit

class HomeScreenTableViewCell: UITableViewCell {
    
    //MARK:UI Elements
  
    static let identifier = "HomeScreenTableViewCell"
    
    let lbl_topTextTitle:UILabel = {
        let lable = UILabel()
        lable.text = "Good morning Sang!"
        lable.textAlignment = .center
        lable.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.titleFontSize_20)
        return lable
    }()
    let img_TopTitile:UIImageView = {
        let image = UIImageView()
        image.image = Resource.SourceImage.SourceImageHomeScreen.img_Shopping
     
        image.isUserInteractionEnabled = true
      
  
        return image
    }()
    @objc func tapLogoShopping(){
        print("tapLogoShopping")
        
    }
    
    //MARK:Object LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
        contentView.addSubview(lbl_topTextTitle)
        contentView.addSubview(img_TopTitile)
      
    }
    
    //MARK:Setup UI Elements
    public func configure(){
     //tapGesture for shopping logo
        let imageShopping = UITapGestureRecognizer(target: self, action: #selector(tapLogoShopping))
       img_TopTitile.addGestureRecognizer(imageShopping)
        //
    }
    func setupUI() {
        self.addSubview(lbl_topTextTitle)
        lbl_topTextTitle.snp.makeConstraints { (make) in
            make.left.bottom.equalToSuperview()
        }
        self.addSubview(img_TopTitile)
        img_TopTitile.snp.makeConstraints({(make) in
            make.right.equalToSuperview().offset( -Demension.shared.largeHorizontalMargin_24)
            make.bottom.equalTo(lbl_topTextTitle)
            
        })
       
    }
  
    
}
