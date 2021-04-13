//
//  TitileMiddle_cell5_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 11/04/2021.
//

import UIKit

class TitileMiddle_cell5_TableViewCell: UITableViewCell {
    static let identifier = "TitileMiddle_cell5_TableViewCell"
    
    //MARK:UI Elements
    
    @objc func tap_lbl_MiddleHomeRight(){
        print("viewAll_tapgesture")
    }
    let lbl_MiddleHomeLeft:UILabel = {
        let label = UILabel()
        label.text = "Popular Restaurents"
        
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.titleFontSize_20)
        return label
    }()
    
    let lbl_MiddleHomeRight:UILabel = {
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
        contentView.addSubview(lbl_MiddleHomeLeft)
        
        lbl_MiddleHomeLeft.snp.makeConstraints({(make) in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(20)
        })
        
        contentView.addSubview(lbl_MiddleHomeRight)
        lbl_MiddleHomeRight.isUserInteractionEnabled = true
        let tapgesture_lbl_MiddleHomeRight = UITapGestureRecognizer(target: self, action: #selector(tap_lbl_MiddleHomeRight))
        lbl_MiddleHomeRight.addGestureRecognizer(tapgesture_lbl_MiddleHomeRight)
        lbl_MiddleHomeRight.snp.makeConstraints({(make) in
            make.right.equalToSuperview().offset(-20)
            
        })
    }
    
    
    
}
