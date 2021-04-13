//
//  TopTitle_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 11/04/2021.
//

import UIKit

class TopTitle_TableViewCell: UITableViewCell {
    //MARK:UI Elements
  
    static let identifier = "TopTitle_TableViewCell"
    
    let lbl_topTextTitle:UILabel = {
        let lable = UILabel()
        lable.text = "Menu"
      
        lable.textAlignment = .right
        lable.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.titleFontSize_20)
        return lable
    }()
  
    //MARK:Object LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
     }
    
    //MARK:Setup UI Elements
 
    func setupUI() {
        contentView.addSubview(lbl_topTextTitle)
        lbl_topTextTitle.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_20)
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_60)
        }
        
    }

}
