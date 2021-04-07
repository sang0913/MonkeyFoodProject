//
//  lbl_Top_Title.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 07/04/2021.
//


import UIKit
public class lbl_Top_Title:BaseUIView {
   
        //MARK:UI Elements
     public  let lbl_Top_Title :UILabel = {
          let label = UILabel()
      
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.titleFontSize_30)
        label.textAlignment = .center
        label.contentMode = .center
            return label
       }()
  
    //MARK:Object LifeCycle
    public override func initialize() {
        setup_lbl_Top_Title()

    }
    
    
    //MARK:Setup UI Elements
    public func setup_lbl_Top_Title(){
        addSubview(lbl_Top_Title)
        lbl_Top_Title.snp.makeConstraints({(make) in
            make.top.left.equalToSuperview()
            make.width.height.equalToSuperview()
       
          
        })
    }
   
   
}
