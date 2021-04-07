//
//  ButtonPrimaryColor.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 07/04/2021.
//

import UIKit
public class ButtonPrimaryColor:BaseUIView {
    var title:String? {
        didSet {
            button_Primary.titleLabel?.text = title
        }
    }
        //MARK:UI Elements
     public  let button_Primary :UIButton = {
          let button = UIButton()
        button.layer.cornerRadius = Demension.shared.superCornerRadius_28
        button.backgroundColor = Theme.shared.accentColor
        button.titleLabel?.textAlignment = .center
        
           return button
       }()
    
    
    //MARK:Object LifeCycle
    public override func initialize() {
        setup_button_Primary()
    }
    
    
    //MARK:Setup UI Elements
    public func setup_button_Primary(){
        addSubview(button_Primary)
        button_Primary.snp.makeConstraints({(make) in
            make.top.left.right.bottom.equalToSuperview()
        })
    }
    
   
}
