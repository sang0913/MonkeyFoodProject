//
//  ButtonSave_ProfileBar_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 13/04/2021.
//

import UIKit

class ButtonSave_ProfileBar_TableViewCell: UITableViewCell {
    
    static let identifier = "ButtonSave_ProfileBar_TableViewCell"
    private let button_ButtonSave_ProfileBar:ButtonPrimaryColor = {
        let button = ButtonPrimaryColor()
        
        button.button_Primary.setTitle("Save", for: .normal)
        button.button_Primary.isUserInteractionEnabled = true
        
        return button
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setup_ButtonSave_ProfileBar()
    }
   
    func setup_ButtonSave_ProfileBar(){
        addSubview(button_ButtonSave_ProfileBar)
        
        //gesture
        let tapgsButtonSave_ProfileBar = UITapGestureRecognizer(target: self, action: #selector(tap_buttonSave_ProfileBar))
        button_ButtonSave_ProfileBar.button_Primary.addGestureRecognizer(tapgsButtonSave_ProfileBar)
        //layout
        button_ButtonSave_ProfileBar.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.normalVerticalMargin_17)
            make.width.equalTo(Demension.shared.defaultWidthButton_333)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.centerX.equalToSuperview()
        })
        
    }
    //Action
    @objc func tap_buttonSave_ProfileBar(){
        print("tap_buttonSave_ProfileBar")
    }
}
