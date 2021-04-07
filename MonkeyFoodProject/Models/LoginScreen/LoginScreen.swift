//
//  LoginScreen.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 07/04/2021.
//

import UIKit
class LoginScreen : BaseViewcontroller {
    
    
    //MARK:UI Elements
    private let lbl_TopTitle :lbl_Top_Title = {
       let label = lbl_Top_Title()
        
        label.lbl_Top_Title.text = Resource.SourceSignInSignUpScreen.LauchScreen.titleButtonSignUp
       
        return label
    }()
    private let lbl_TopTitle_Discription :lbl_Top_Title = {
       let label = lbl_Top_Title()
  
        label.lbl_Top_Title_Discription.text = Resource.SourceSignInSignUpScreen.LoginScreen.lbl_titleTopDiscriptionLoginScreen
       
        return label
    }()
    //MARK:Object LifeCycle
    override func initialize() {
        setup_lbl_TopTitle()
        setup_lbl_TopTitle_Discription()
    }
    //MARK:Setup UI Elements
    private func setup_lbl_TopTitle(){
        view.addSubview(lbl_TopTitle)
        lbl_TopTitle.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_69)
            make.centerY.equalToSuperview()
            make.width.equalToSuperview()
        })
    }
    
   
    private func setup_lbl_TopTitle_Discription(){
        view.addSubview( lbl_TopTitle_Discription)
        lbl_TopTitle_Discription.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_TopTitle.snp.top).offset(Demension.shared.normalVerticalMargin_17)
            
            make.width.equalToSuperview()
           
        })
    }
}
