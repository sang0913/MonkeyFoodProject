//
//  Title_Footer_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 11/04/2021.
//

import UIKit

class Title_Footer_TableViewCell: UITableViewCell {

  static let identifier  = "Title_Footer_TableViewCell"
    
    
    //MARK:UI Elements
    
    @objc func tap_lbl_MiddleHomeRight(){
        print("tap_lbl_MiddleHomeRight")
    }
    let lbl_Title_FooterHomeLeft:UILabel = {
        let label = UILabel()
        label.text = "Recent Items"
        
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.titleFontSize_20)
        return label
    }()
    
    let lbl_Title_FooterHomeRight:UILabel = {
        let label = UILabel()
        label.text = "View all"
        label.textColor = Theme.shared.accentColor
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisMedium, size: Demension.shared.smallCaptionFontSize_10)
        return label
    }()
    
    //MARK:Object LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    //MARK:Setup UI Elements
    
    func setupUI(){
        contentView.addSubview(lbl_Title_FooterHomeLeft)
        
        lbl_Title_FooterHomeLeft.snp.makeConstraints({(make) in
            make.top.left.equalToSuperview().offset(Demension.shared.largeVerticalMargin_42)
          
        })
        
        contentView.addSubview(lbl_Title_FooterHomeRight)
        lbl_Title_FooterHomeRight.isUserInteractionEnabled = true
        let tapgesture_lbl_MiddleHomeRight = UITapGestureRecognizer(target: self, action: #selector(tap_lbl_MiddleHomeRight))
        lbl_Title_FooterHomeRight.addGestureRecognizer(tapgesture_lbl_MiddleHomeRight)
        lbl_Title_FooterHomeRight.snp.makeConstraints({(make) in
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalTo(lbl_Title_FooterHomeLeft)
        })
    }
    
    
    
    
}
