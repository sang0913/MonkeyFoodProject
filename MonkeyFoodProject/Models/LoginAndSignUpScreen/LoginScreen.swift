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
        
        label.lbl_Top_Title.text = Resource.SourceSignInSignUpScreen.LauchScreen.titleButtonLogin
      
        return label
    }()
    
    private let lbl_TopTitle_Discription :lbl_Top_Discription_Titile = {
       let label = lbl_Top_Discription_Titile()
      
        label.lbl_Top_Title_Discription.text = Resource.SourceSignInSignUpScreen.LoginScreen.titleTopDiscriptionLoginScreen
        return label
    }()
    
    private let txt_Email_LoginScreen:textField_InPut_Reusable = {
       let txt_Email = textField_InPut_Reusable()
        
            txt_Email.txtPlaceholder = Resource.SourceSignInSignUpScreen.LoginScreen.txt_PlaceholderEmail
        return txt_Email
    }()
    
    private let txt_Password_LoginScreen:textField_InPut_Reusable = {
       let txt_Email = textField_InPut_Reusable()
       txt_Email.txtPlaceholder = Resource.SourceSignInSignUpScreen.LoginScreen.txt_PlaceholderPassword
       
        return txt_Email
    }()
    
    private let button_LoginScreen:ButtonPrimaryColor = {
       let button = ButtonPrimaryColor()
        
      
        button.button_Primary.setTitle(Resource.SourceSignInSignUpScreen.LauchScreen.titleButtonLogin, for: .normal)
        button.button_Primary.addTarget(self, action: #selector(tapButtonLogin), for: .touchUpInside)
        return button
    }()
  
    
    private let lbl_title_ForgotPS_LoginScreen :lbl_Top_Discription_Titile = {
       let label = lbl_Top_Discription_Titile()
      
        label.lbl_Top_Title_Discription.text = Resource.SourceSignInSignUpScreen.LoginScreen.title_ForgotPS_LoginScreen
        return label
    }()
    
    
    private let lbl_title_OrLoginWith_LoginScreen :lbl_Top_Discription_Titile = {
       let label = lbl_Top_Discription_Titile()
      
        label.lbl_Top_Title_Discription.text = Resource.SourceSignInSignUpScreen.LoginScreen.title_OrLoginWith_LoginScreen
        return label
    }()
    
    
    private let button_LoginWithFB_LoginScreen:ButtonnLoginFB_GG_Reusable = {
       let button = ButtonnLoginFB_GG_Reusable()
        button.button_LoginWithApp.setImage(Resource.SourceImage.SourceImageLogin.ImageFaceBook, for: .normal)
        button.button_LoginWithApp.backgroundColor = Theme.shared.buttonBG_FB_Color
       
        button.button_LoginWithApp.setTitle(Resource.SourceSignInSignUpScreen.LoginScreen.titleButtonLoginFB, for: .normal)
        
        button.button_LoginWithApp.addTarget(self, action: #selector(tapButtonLoginFB), for: .touchUpInside)
        return button
    }()
    private let button_LoginWithGG_LoginScreen:ButtonnLoginFB_GG_Reusable = {
       let button = ButtonnLoginFB_GG_Reusable()
        button.button_LoginWithApp.setImage(Resource.SourceImage.SourceImageLogin.ImageGoogle, for: .normal)
        button.button_LoginWithApp.backgroundColor = Theme.shared.buttonBG_GG_Color
       
        button.button_LoginWithApp.setTitle(Resource.SourceSignInSignUpScreen.LoginScreen.titleButtonLoginGG, for: .normal)
        
        button.button_LoginWithApp.addTarget(self, action: #selector(tapButtonLoginGG), for: .touchUpInside)
        return button
    }()
    
    
    private let lbl_titleFooter_LoginScreen :lbl_Footer_Login_Reusable = {
       let label = lbl_Footer_Login_Reusable()
        label.lbl_footerLeft_Reusable.text = Resource.SourceSignInSignUpScreen.LoginScreen.titleFooterLoginLeft
        label.lbl_footerRight_Reusable.text = Resource.SourceSignInSignUpScreen.LoginScreen.titleFooterLoginRight
        
        return label
    }()
    
    
    //MARK:Object LifeCycle
    override func initialize() {
        setup_lbl_TopTitle()
        setup_lbl_TopTitle_Discription()
        setup_txt_Email_LoginScreen()
        setup_txt_Password_LoginScreen()
        setup_LoginButon_LoginScreen()
        setup_lbl_title_ForgotPS_LoginScreen()
        setup_lbl_title_OrLoginWith_LoginScreen()
        setup_button_LoginWithFB_LoginScreen()
        setup_button_LoginWithGG_LoginScreen()
        setup_lbl_titleFooter_LoginScreen()
    }
    //MARK:Setup UI Elements
    private func setup_lbl_TopTitle(){
        view.addSubview(lbl_TopTitle)
        lbl_TopTitle.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_69)
            make.centerX.equalToSuperview()
           
        })
    }
    
   
    private func setup_lbl_TopTitle_Discription(){
        view.addSubview( lbl_TopTitle_Discription)
        lbl_TopTitle_Discription.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_TopTitle.snp.bottom).offset(Demension.shared.normalVerticalMargin_17)
         
            make.width.equalToSuperview()
           
        })
    }
   
     private func setup_txt_Email_LoginScreen(){
         view.addSubview(txt_Email_LoginScreen)
        txt_Email_LoginScreen.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_TopTitle_Discription.snp.bottom).offset(Demension.shared.largeVerticalMargin_36)
            make.width.equalTo(Demension.shared.defaultWidthButton_307)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.centerX.equalToSuperview()
         })
     }
   
    private func setup_txt_Password_LoginScreen(){
        view.addSubview( txt_Password_LoginScreen)
        txt_Password_LoginScreen.snp.makeConstraints({(make) in
           make.top.equalTo(txt_Email_LoginScreen.snp.bottom).offset(Demension.shared.largeVerticalMargin_28)
            make.width.height.equalTo(txt_Email_LoginScreen)
           make.centerX.equalToSuperview()
        })
    }
    private func setup_LoginButon_LoginScreen(){
        view.addSubview( button_LoginScreen)
        button_LoginScreen.snp.makeConstraints({(make) in
           make.top.equalTo(txt_Password_LoginScreen.snp.bottom).offset(Demension.shared.largeVerticalMargin_28)
            make.width.height.equalTo(txt_Email_LoginScreen)
           make.centerX.equalToSuperview()
        })
    }
    @objc func tapButtonLogin(){
        print("tapButtonLogin")
    }
    @objc func tapButtonLoginFB(){
        print("tapButtonLoginFB")
    }
    @objc func tapButtonLoginGG(){
        print("tapButtonLoginGG")
    }
    private func setup_lbl_title_ForgotPS_LoginScreen(){
        view.addSubview(lbl_title_ForgotPS_LoginScreen)
        lbl_title_ForgotPS_LoginScreen.snp.makeConstraints({(make) in
           make.top.equalTo(button_LoginScreen.snp.bottom).offset(Demension.shared.largeVerticalMargin_28)
           
           make.centerX.equalToSuperview()
        })
    }
    
    private func setup_lbl_title_OrLoginWith_LoginScreen(){
        view.addSubview(  lbl_title_OrLoginWith_LoginScreen)
        lbl_title_OrLoginWith_LoginScreen.snp.makeConstraints({(make) in
           make.top.equalTo(lbl_title_ForgotPS_LoginScreen.snp.bottom).offset(Demension.shared.largeVerticalMargin_56)
           
           make.centerX.equalToSuperview()
        })
    }
    private func setup_button_LoginWithFB_LoginScreen(){
        view.addSubview(button_LoginWithFB_LoginScreen)
        button_LoginWithFB_LoginScreen.snp.makeConstraints({(make) in
           make.top.equalTo(lbl_title_OrLoginWith_LoginScreen.snp.bottom).offset(Demension.shared.largeVerticalMargin_28)
            make.width.height.equalTo(txt_Email_LoginScreen)
           make.centerX.equalToSuperview()
        })
    }
    private func setup_button_LoginWithGG_LoginScreen(){
        view.addSubview( button_LoginWithGG_LoginScreen)
        button_LoginWithGG_LoginScreen.snp.makeConstraints({(make) in
           make.top.equalTo(button_LoginWithFB_LoginScreen.snp.bottom).offset(Demension.shared.largeVerticalMargin_28)
            make.width.height.equalTo(txt_Email_LoginScreen)
           make.centerX.equalToSuperview()
        })
    }
   
    private func setup_lbl_titleFooter_LoginScreen(){
        view.addSubview( lbl_titleFooter_LoginScreen)
        lbl_titleFooter_LoginScreen.snp.makeConstraints({(make) in
           make.top.equalTo(button_LoginWithGG_LoginScreen.snp.bottom).offset(Demension.shared.largeVerticalMargin_90)
            make.width.equalTo(Demension.shared.widthScale * 210)
           make.centerX.equalToSuperview()
        })
    }
}
