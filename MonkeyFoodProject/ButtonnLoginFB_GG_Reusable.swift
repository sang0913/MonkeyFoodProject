//
//  ButtonnLoginFB_GGreusable.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 07/04/2021.
//

import UIKit
public class ButtonnLoginFB_GG_Reusable:BaseUIView {
 
//    button.setImage(icon, for: .normal)
//        button.imageView?.contentMode = .scaleAspectFit
//        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -40, bottom: 0, right: 0)
    
            //MARK:UI Elements
         public  let button_LoginWithApp :UIButton = {
              let button = UIButton()
            button.titleLabel?.font = UIFont.systemFont(ofSize: Demension.shared.captionFontSize_12)
            button.layer.cornerRadius = Demension.shared.superCornerRadius_28
            button.backgroundColor = .gray
            button.titleLabel?.textAlignment = .right
          
            button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 25)
            
               return button
           }()
    let viewLogo : UIImageView = {
     let image = UIImageView()
        image.image = UIImage(named: "Logo")
        return image
    }()
        
        //MARK:Object LifeCycle
        public override func initialize() {
            setup_button_LoginWithApp()
        }
        
        
        //MARK:Setup UI Elements
        public func setup_button_LoginWithApp(){
            addSubview(button_LoginWithApp)
            button_LoginWithApp.snp.makeConstraints({(make) in
                make.top.left.right.bottom.equalToSuperview()
            })
            
        }
        
       
    
    
}
