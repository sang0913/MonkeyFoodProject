//
//  ResetPassworldScreen.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 07/04/2021.
//

import UIKit

 class ResetPassworldScreen: BaseViewcontroller {
    //MARK:UI Elements
    private let lbl_TopTitle_RS_ :lbl_Top_Title = {
       let label = lbl_Top_Title()
        
        label.lbl_Top_Title.text = Resource.SourceSignInSignUpScreen.SignUpScreen.TopTile_ResetPassword
      
        return label
    }()
    private let lbl_TopTitle_Discription_RS_Screen :lbl_Top_Discription_Titile = {
       let label = lbl_Top_Discription_Titile()
        label.lbl_Top_Title_Discription.numberOfLines = 2
        label.lbl_Top_Title_Discription.textAlignment = .center
        label.lbl_Top_Title_Discription.text = Resource.SourceSignInSignUpScreen.SignUpScreen.titleTopDiscription_Reset_Screen
        return label
    }()
    
    private let txt_Email_RS_Screen:textField_InPut_Reusable = {
       let txt_Name = textField_InPut_Reusable()
        
        txt_Name.txtPlaceholder = Resource.SourceSignInSignUpScreen.SignUpScreen.txt_Placeholder_Email
        return txt_Name
    }()
  
    private let button_Send_RS_Screen:ButtonPrimaryColor = {
       let button = ButtonPrimaryColor()
        
      
        button.button_Primary.setTitle(Resource.SourceSignInSignUpScreen.SignUpScreen.TopTile_SignUp, for: .normal)
        button.button_Primary.addTarget(self, action: #selector(tapButtonSend), for: .touchUpInside)
        return button
    }()
    
    @objc func tapButtonSend(){
        print("tapButtonSend")
    }
    
       //MARK:Object LifeCycle
    override func initialize() {
        setup_lbl_TopTitle()
        setup_lbl_TopTitle_Discription_RS_Screen()
        setup_txt_Email_RS_Screen()
        setup_button_Send_RS_Screen()
        
        
        let screenTapGesture = UITapGestureRecognizer(target: self, action: #selector(superScreenTapGesture))
        view.addGestureRecognizer(screenTapGesture)
       
    }
    
       //MARK:Setup UI Elements
    
    private func setup_lbl_TopTitle(){
        view.addSubview(lbl_TopTitle_RS_)
        lbl_TopTitle_RS_.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_90)
            make.centerX.equalToSuperview()
           
        })
    }
    
     private func setup_lbl_TopTitle_Discription_RS_Screen(){
         view.addSubview( lbl_TopTitle_Discription_RS_Screen)
        lbl_TopTitle_Discription_RS_Screen.snp.makeConstraints({(make) in
             make.top.equalTo(lbl_TopTitle_RS_.snp.bottom).offset(Demension.shared.normalVerticalMargin_17)
          
             make.width.equalToSuperview()
            
         })
     }
    private func setup_txt_Email_RS_Screen(){
        view.addSubview(txt_Email_RS_Screen)
        txt_Email_RS_Screen.snp.makeConstraints({(make) in
           make.top.equalTo(lbl_TopTitle_Discription_RS_Screen.snp.bottom).offset(Demension.shared.largeVerticalMargin_56)
           make.width.equalTo(Demension.shared.defaultWidthButton_307)
           make.height.equalTo(Demension.shared.defaultHeightButton_56)
           make.centerX.equalToSuperview()
        })
    }
    private func setup_button_Send_RS_Screen(){
        view.addSubview( button_Send_RS_Screen)
        button_Send_RS_Screen.snp.makeConstraints({(make) in
           make.top.equalTo(txt_Email_RS_Screen.snp.bottom).offset(Demension.shared.largeVerticalMargin_32)
            make.width.height.equalTo(txt_Email_RS_Screen)
           make.centerX.equalToSuperview()
        })
    }
    @objc func superScreenTapGesture() {
        view.endEditing(true)
    }
}


