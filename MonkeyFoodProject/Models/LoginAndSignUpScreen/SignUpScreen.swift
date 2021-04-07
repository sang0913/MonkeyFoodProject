//
//  SignUpScreen.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 07/04/2021.
//

import UIKit
class SignUpScreen:BaseViewcontroller {
   
    private let lbl_Top_Title_SignUp : lbl_Top_Title = {
        let label = lbl_Top_Title()
        label.lbl_Top_Title.text = Resource.SourceSignInSignUpScreen.SignUpScreen.TopTile_SignUp
        return label
    }()
    private let lbl_TopTitle_Discription_SignUp :lbl_Top_Discription_Titile = {
       let label = lbl_Top_Discription_Titile()
      
        label.lbl_Top_Title_Discription.text = Resource.SourceSignInSignUpScreen.SignUpScreen.titleTopDiscriptionSignUpScreen
        return label
    }()
    
    private let txt_Name_SignUp:textField_InPut_Reusable = {
       let txt_Name = textField_InPut_Reusable()
        
        txt_Name.txtPlaceholder = Resource.SourceSignInSignUpScreen.SignUpScreen.txt_Placeholder_Name
        return txt_Name
    }()
    private let txt_Email_SignUp:textField_InPut_Reusable = {
       let textField = textField_InPut_Reusable()
        
            textField.txtPlaceholder = Resource.SourceSignInSignUpScreen.SignUpScreen.txt_Placeholder_Email
        return textField
    }()
    private let txt_Mobile_SignUp:textField_InPut_Reusable = {
       let textField = textField_InPut_Reusable()
        
            textField.txtPlaceholder = Resource.SourceSignInSignUpScreen.SignUpScreen.txt_Placeholder_MobileNo
        return textField
    }()
    private let txt_Address_SignUp:textField_InPut_Reusable = {
       let textField = textField_InPut_Reusable()
        
            textField.txtPlaceholder = Resource.SourceSignInSignUpScreen.SignUpScreen.txt_Placeholder_Address
        return textField
    }()
    private let txt_Password_SignUp:textField_InPut_Reusable = {
       let textField = textField_InPut_Reusable()
        
            textField.txtPlaceholder = Resource.SourceSignInSignUpScreen.SignUpScreen.txt_Placeholder_Password
        return textField
    }()
    
    private let txt_ComformPassword_SignUp:textField_InPut_Reusable = {
       let textField = textField_InPut_Reusable()
        
            textField.txtPlaceholder = Resource.SourceSignInSignUpScreen.SignUpScreen.txt_Placeholder_Confirm_Password
        return textField
    }()
    
    private let button_SignUpScreen:ButtonPrimaryColor = {
       let button = ButtonPrimaryColor()
        
      
        button.button_Primary.setTitle(Resource.SourceSignInSignUpScreen.SignUpScreen.TopTile_SignUp, for: .normal)
        button.button_Primary.addTarget(self, action: #selector(tapButtonLogin), for: .touchUpInside)
        return button
    }()
    
    private let lbl_titleFooter_SignUpScreen :lbl_Footer_Login_Reusable = {
       let label = lbl_Footer_Login_Reusable()
        label.lbl_footerLeft_Reusable.text = Resource.SourceSignInSignUpScreen.LoginScreen.titleFooterLoginLeft
        label.lbl_footerRight_Reusable.text = Resource.SourceSignInSignUpScreen.LoginScreen.titleFooterLoginRight
        
        return label
    }()
    
    @objc func tapButtonLogin(){
        print("tapButtonLogin")
    }
    
    
    //MARK:UI Elements

    //MARK:Object LifeCycle
    override func initialize() {
        setup_lbl_Top_Title_SignUp()
        setup_lbl_TopTitle_Discription()
        setup_txt_Name_SignUp()
        setup_txt_Email_SignUp()
        setup_txt_Mobile_SignUp()
        setup_txt_Address_SignUp()
        setup_txt_Password_SignUp()
        setup_txt_ComformPassword_SignUp()
        setup_LoginButon_LoginScreen()
        setup_lbl_titleFooter_LoginScreen()
    }
    
    //MARK:Setup UI Elements
    private func setup_lbl_Top_Title_SignUp(){
        view.addSubview(lbl_Top_Title_SignUp)
        lbl_Top_Title_SignUp.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_69)
            make.centerX.equalToSuperview()
        })
    }
    
     private func setup_lbl_TopTitle_Discription(){
         view.addSubview( lbl_TopTitle_Discription_SignUp)
        lbl_TopTitle_Discription_SignUp.snp.makeConstraints({(make) in
             make.top.equalTo(lbl_Top_Title_SignUp.snp.bottom).offset(Demension.shared.normalVerticalMargin_17)
          
             make.width.equalToSuperview()
            
         })
     }
    private func setup_txt_Name_SignUp(){
        view.addSubview(txt_Name_SignUp)
        txt_Name_SignUp.snp.makeConstraints({(make) in
           make.top.equalTo(lbl_TopTitle_Discription_SignUp.snp.bottom).offset(Demension.shared.largeVerticalMargin_36)
           make.width.equalTo(Demension.shared.defaultWidthButton_307)
           make.height.equalTo(Demension.shared.defaultHeightButton_56)
           make.centerX.equalToSuperview()
        })
    }
    private func setup_txt_Email_SignUp(){
        view.addSubview(txt_Email_SignUp)
        txt_Email_SignUp.snp.makeConstraints({(make) in
           make.top.equalTo(txt_Name_SignUp.snp.bottom).offset(Demension.shared.largeVerticalMargin_28)
           make.width.equalTo(Demension.shared.defaultWidthButton_307)
           make.height.equalTo(Demension.shared.defaultHeightButton_56)
           make.centerX.equalToSuperview()
        })
    }
    private func setup_txt_Mobile_SignUp(){
        view.addSubview(txt_Mobile_SignUp)
        txt_Mobile_SignUp.snp.makeConstraints({(make) in
           make.top.equalTo(txt_Email_SignUp.snp.bottom).offset(Demension.shared.largeVerticalMargin_28)
           make.width.equalTo(Demension.shared.defaultWidthButton_307)
           make.height.equalTo(Demension.shared.defaultHeightButton_56)
           make.centerX.equalToSuperview()
        })
    }
    private func setup_txt_Address_SignUp(){
        view.addSubview(txt_Address_SignUp)
        txt_Address_SignUp.snp.makeConstraints({(make) in
           make.top.equalTo(txt_Mobile_SignUp.snp.bottom).offset(Demension.shared.largeVerticalMargin_28)
           make.width.equalTo(Demension.shared.defaultWidthButton_307)
           make.height.equalTo(Demension.shared.defaultHeightButton_56)
           make.centerX.equalToSuperview()
        })
    }
    private func setup_txt_Password_SignUp(){
        view.addSubview(txt_Password_SignUp)
        txt_Password_SignUp.snp.makeConstraints({(make) in
           make.top.equalTo(txt_Address_SignUp.snp.bottom).offset(Demension.shared.largeVerticalMargin_28)
           make.width.equalTo(Demension.shared.defaultWidthButton_307)
           make.height.equalTo(Demension.shared.defaultHeightButton_56)
           make.centerX.equalToSuperview()
        })
    }
    private func setup_txt_ComformPassword_SignUp(){
        view.addSubview(txt_ComformPassword_SignUp)
        txt_ComformPassword_SignUp.snp.makeConstraints({(make) in
           make.top.equalTo(txt_Password_SignUp.snp.bottom).offset(Demension.shared.largeVerticalMargin_28)
           make.width.equalTo(Demension.shared.defaultWidthButton_307)
           make.height.equalTo(Demension.shared.defaultHeightButton_56)
           make.centerX.equalToSuperview()
        })
    }
    
    private func setup_LoginButon_LoginScreen(){
        view.addSubview( button_SignUpScreen)
        button_SignUpScreen.snp.makeConstraints({(make) in
           make.top.equalTo(txt_ComformPassword_SignUp.snp.bottom).offset(Demension.shared.largeVerticalMargin_28)
            make.width.height.equalTo(txt_ComformPassword_SignUp)
           make.centerX.equalToSuperview()
        })
    }
    
    private func setup_lbl_titleFooter_LoginScreen(){
        view.addSubview( lbl_titleFooter_SignUpScreen)
        lbl_titleFooter_SignUpScreen.snp.makeConstraints({(make) in
           make.top.equalTo(button_SignUpScreen.snp.bottom).offset(Demension.shared.largeVerticalMargin_28 )
            make.width.equalTo(Demension.shared.widthScale * 210)
           make.centerX.equalToSuperview()
        })
    }
}

