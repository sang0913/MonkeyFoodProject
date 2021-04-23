//
//  InfoUser_ProfileBar_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 12/04/2021.
//

import UIKit

class InfoUser_ProfileBar_TableViewCell: UITableViewCell {
    static let identifier = "InfoUser_ProfileBar_TableViewCell"
    
 
    //MARK:UI Elements
    private let viewInfo_User:UIView = {
        let view = UIView()
        
        return view
    }()
    private let img_infoUser_ProfileBar:UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "7C4F96BD-AF2D-4FCD-843B-FABBD3A3B4B6_1_105_c")
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = Demension.shared.superCornerRadius_51
        image.layer.masksToBounds = true
        return image
    }()
    
    private let img_Camera_ProfileBar:UIImageView = {
        let image = UIImageView()
        image.image = Resource.SourceTabbarScreen.tabbarProfile.img_Camera_ProfileBar
        image.contentMode = .center
        image.tintColor = .gray
      
        
        return image
    }()
    //view bounds  pencil and editprofile
    private let viewBounds_EditProfile :UIView = {
        let view = UIView()
        
        return view
    }()
    private let img_Pencil_ProfileBar:UIImageView = {
        let image = UIImageView()
        image.image = Resource.SourceTabbarScreen.tabbarProfile.img_Pencil_ProfileBar
    
        
        return image
    }()
    private let lbl_EditProfile :UILabel = {
        let label = UILabel()
        label.text = Resource.SourceTabbarScreen.tabbarProfile.lbl_EditProfile
        label.textColor = Theme.shared.accentColor
        label.textAlignment = .center
        label.contentMode = .center
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.smallCaptionFontSize_10)
        
        return label
    }()
    private let lbl_BigTitle_ProfileBar :UILabel = {
        let label = UILabel()
        label.text = "Hi there Sang!"
      
        label.textAlignment = .center
        
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisBold, size: Demension.shared.bodyFontSize_16)
        
        return label
    }()
     let lbl_SignOut_ProfileBar :UILabel = {
        let label = UILabel()
        label.text = Resource.SourceTabbarScreen.tabbarProfile.lbl_SignOut_ProfileBar
      
        label.textAlignment = .center
        
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.smallCaptionFontSize_11)
         return label
    }()
    
    //MARK:Object LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()
  
        
        setup_viewInfo_User()
        setup_img_infoUser_ProfileBar()
        setup_viewBounds_EditProfile()
        setup_img_Pencil_ProfileBar()
        setup_lbl_EditProfile()
        setup_img_Camera_ProfileBar()
        setup_lbl_BigTitle_ProfileBar()
        setup_lbl_SignOut_ProfileBarr()
    }
    
    //MARK:Setup UI Elements
    private func setup_viewInfo_User(){
        contentView.addSubview(viewInfo_User)
        
        viewInfo_User.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_30)
            make.left.equalToSuperview().offset(Demension.shared.largeHorizontalMargin_130)
            make.width.equalTo(Demension.shared.largeHorizontalMargin_116)
            make.height.equalTo(Demension.shared.largeVerticalMargin_185)
        })
    }
    private func setup_img_infoUser_ProfileBar(){
        viewInfo_User.addSubview(img_infoUser_ProfileBar)
        img_infoUser_ProfileBar.snp.makeConstraints({(make) in
            make.left.equalToSuperview().offset(Demension.shared.smallHorizontalMargin_7)
            make.right.equalToSuperview().offset(-Demension.shared.smallHorizontalMargin_7)
            make.top.equalToSuperview()
            make.height.equalTo(Demension.shared.largeVerticalMargin_102)
        })
    }
    private func setup_img_Camera_ProfileBar(){
        img_infoUser_ProfileBar.addSubview(img_Camera_ProfileBar)
        img_Camera_ProfileBar.snp.makeConstraints({(make) in
            make.bottom.equalToSuperview()
            make.height.equalTo(Demension.shared.largeVerticalMargin)
            make.width.equalTo(Demension.shared.largeHorizontalMargin_87)
            make.centerX.equalToSuperview()
        })
    }
    
    //view bounds edit
    private func setup_viewBounds_EditProfile(){
        viewInfo_User.addSubview(viewBounds_EditProfile)
        
        viewBounds_EditProfile.snp.makeConstraints({(make) in
            make.width.equalTo(Demension.shared.largeHorizontalMargin_65)
            
            make.top.equalTo(img_infoUser_ProfileBar.snp.bottom).offset(Demension.shared.normalVerticalMargin_20)
            make.centerX.equalToSuperview()
        })
    }
    
    private func setup_img_Pencil_ProfileBar(){
        viewBounds_EditProfile.addSubview(img_Pencil_ProfileBar)
        
        img_Pencil_ProfileBar.snp.makeConstraints({(make) in
            make.top.left.bottom.equalToSuperview()
            make.width.equalTo(Demension.shared.normalHorizontalMargin_11)
            
        })
    }
    private func setup_lbl_EditProfile(){
        viewBounds_EditProfile.addSubview(lbl_EditProfile)
        lbl_EditProfile.snp.makeConstraints({(make) in
            make.left.equalTo(img_Pencil_ProfileBar.snp.right).offset(Demension.shared.smallHorizontalMargin_7)
        })
    }
    
    private func setup_lbl_BigTitle_ProfileBar(){
        viewInfo_User.addSubview(lbl_BigTitle_ProfileBar)
        lbl_BigTitle_ProfileBar.snp.makeConstraints({(make) in
            make.top.equalTo(viewBounds_EditProfile.snp.bottom).offset(Demension.shared.normalVerticalMargin_17)
            make.centerX.equalToSuperview()
        })
    }
     func setup_lbl_SignOut_ProfileBarr(){
        viewInfo_User.addSubview(lbl_SignOut_ProfileBar)
        lbl_SignOut_ProfileBar.isUserInteractionEnabled = true
    
       
        
        lbl_SignOut_ProfileBar.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_BigTitle_ProfileBar.snp.bottom).offset(Demension.shared.mediumVerticalMargin_8)
            make.centerX.equalToSuperview()
        })
    }

   
}




