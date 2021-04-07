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
    public  let lbl_Top_Title_Discription :UILabel = {
         let label = UILabel()
        
        label.textAlignment = .center
        label.contentMode = .center
       label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisThin, size: Demension.shared.captionFontSize_14)
       
          return label
      }()
   
    
    //MARK:Object LifeCycle
    public override func initialize() {
        setup_lbl_Top_Title()
        setup_lbl_Top_Title_Discription()
    }
    
    
    //MARK:Setup UI Elements
    public func setup_lbl_Top_Title(){
        addSubview(lbl_Top_Title)
        lbl_Top_Title.snp.makeConstraints({(make) in
            make.top.left.equalToSuperview()
            make.width.equalToSuperview()
        })
    }
    public func setup_lbl_Top_Title_Discription(){
        addSubview(lbl_Top_Title_Discription)
        lbl_Top_Title_Discription.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_Top_Title.snp.bottom).offset(17)
            make.left.right.equalToSuperview()
        
        })
    }
   
}
