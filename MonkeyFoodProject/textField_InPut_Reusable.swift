//
//  lbl_Top_Title.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 07/04/2021.
//


import UIKit
public class textField_InPut_Reusable:BaseUIView {
    var txtPlaceholder :String? {
        didSet {
            txt_inputReusable.placeholder = txtPlaceholder
        }
    }
        //MARK:UI Elements
     public  let txt_inputReusable :UITextField = {
        let txt_TextField = UITextField()
        txt_TextField.backgroundColor = Theme.shared.backgroundColorTextField
        txt_TextField.layer.cornerRadius = Demension.shared.superCornerRadius_28
      
        return txt_TextField
       }()
   
    
    //MARK:Object LifeCycle
    public override func initialize() {
        setup_txt_inputReusable()
    }
    
    
    //MARK:Setup UI Elements
    public func setup_txt_inputReusable(){
        addSubview(txt_inputReusable)
        txt_inputReusable.snp.makeConstraints({(make) in
            make.top.left.width.equalToSuperview()
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
        })
  
    }
   
}
