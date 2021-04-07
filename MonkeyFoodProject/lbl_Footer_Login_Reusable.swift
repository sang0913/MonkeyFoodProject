//
//  lbl_Footer_Login_Reusable.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 07/04/2021.
//

import UIKit
public class lbl_Footer_Login_Reusable: BaseUIView {
    
    //MARK:UI Elements
    //view bao trum 2 doi tuong trong label
    public let view_footer_Reusable: UILabel = {
        let label = UILabel()
   
     
        return label
    }()
    public let lbl_footerLeft_Reusable: UILabel = {
        let label = UILabel()
       
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisThin, size: Demension.shared.captionFontSize_14)
       
        return label
    }()
    public let lbl_footerRight_Reusable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisBold, size: Demension.shared.captionFontSize_14)
       
        label.textColor = Theme.shared.accentColor
        return label
    }()
    //MARK:Object LifeCycle
    override func initialize() {
        lbl_Footer_Reusable()
    }
    //MARK:Setup UI Elements
    public func lbl_Footer_Reusable(){
        addSubview(view_footer_Reusable)
        addSubview(lbl_footerLeft_Reusable)
        addSubview(lbl_footerRight_Reusable)
        view_footer_Reusable.snp.makeConstraints({(make) in
            make.top.width.height.bottom.equalToSuperview()
            
            //right
            lbl_footerRight_Reusable.snp.makeConstraints({(make) in
                make.top.right.bottom.equalToSuperview()
                
            })
            lbl_footerLeft_Reusable.snp.makeConstraints({(make) in
                make.top.left.bottom.equalToSuperview()
               
            })
            
        })
        
        
    }
}
