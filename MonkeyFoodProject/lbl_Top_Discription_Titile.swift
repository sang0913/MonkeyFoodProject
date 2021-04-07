//
//  lbl_Top_Title.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 07/04/2021.
//


import UIKit
public class lbl_Top_Discription_Titile:BaseUIView {
   
   
    public  let lbl_Top_Title_Discription :UILabel = {
         let label = UILabel()
    
        label.textAlignment = .center
        label.contentMode = .center
       label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisThin, size: Demension.shared.captionFontSize_14)
       
          return label
      }()
   
    
    //MARK:Object LifeCycle
    public override func initialize() {
       
        setup_lbl_Top_Title_Discription()
    }
    
    
    //MARK:Setup UI Elements
   
    public func setup_lbl_Top_Title_Discription(){
        addSubview(lbl_Top_Title_Discription)
        lbl_Top_Title_Discription.snp.makeConstraints({(make) in
            make.top.bottom.left.right.equalToSuperview()
        
        })
    }
   
}
