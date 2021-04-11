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
        let textField = textField_InPut_Reusable()
        
        textField.txtPlaceholder = Resource.SourceSignInSignUpScreen.LoginScreen.txt_PlaceholderEmail
        return textField
    }()
    
    private let txt_Password_LoginScreen:textField_InPut_Reusable = {
        let textField = textField_InPut_Reusable()
        textField.txtPlaceholder = Resource.SourceSignInSignUpScreen.LoginScreen.txt_PlaceholderPassword
        textField.isercurityTextEntry = true
        return textField
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
        label.lbl_footerRight_Reusable.text = Resource.SourceSignInSignUpScreen.SignUpScreen.TopTile_SignUp
        
        return label
    }()
    
    
    //MARK:Object LifeCycle
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppearLoginScreen")
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappearLoginScreen")
        
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppearLoginScreen")
        navigationController?.navigationBar.isTranslucent = true
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappearLoginScreen")
    }
        
    override func initialize() {
        print("ViewdidLoad")
      
     
        
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
        
        let screenTapGesture = UITapGestureRecognizer(target: self, action: #selector(superScreenTapGesture))
        view.addGestureRecognizer(screenTapGesture)
        
       
    }
    //MARK:Setup UI Elements
    private func setup_lbl_TopTitle(){
        view.addSubview(lbl_TopTitle)
        lbl_TopTitle.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_90)
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
    
    @objc func tapButtonLoginFB(){
        print("tapButtonLoginFB")
    }
    @objc func tapButtonLoginGG(){
        print("tapButtonLoginGG")
    }
    
    @objc func tap_lbl_ForgotPS(){
        print("tap_lbl_ForgotPS")
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "ResetPassworldScreen") as! ResetPassworldScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc func tap_lbl_titleFooter_LoginScreen(){
        print("tap_lbl_titleFooter_LoginScreen")
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "SignUpScreen") as! SignUpScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }
    private func setup_lbl_title_ForgotPS_LoginScreen(){
        view.addSubview(lbl_title_ForgotPS_LoginScreen)
        
        let labelTapGesture = UITapGestureRecognizer(target:self,action:#selector(tap_lbl_ForgotPS))
        lbl_title_ForgotPS_LoginScreen.isUserInteractionEnabled = true
        lbl_title_ForgotPS_LoginScreen.addGestureRecognizer(labelTapGesture)
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
        
        let lableTapGesture = UITapGestureRecognizer(target: self, action: #selector(tap_lbl_titleFooter_LoginScreen))
        lbl_titleFooter_LoginScreen.addGestureRecognizer(lableTapGesture)
        lbl_titleFooter_LoginScreen.isUserInteractionEnabled = true
        lbl_titleFooter_LoginScreen.snp.makeConstraints({(make) in
            make.top.equalTo(button_LoginWithGG_LoginScreen.snp.bottom).offset(Demension.shared.largeVerticalMargin_90)
            make.width.equalTo(Demension.shared.widthScale * 225)
            make.centerX.equalToSuperview()
        })
    }
}
extension LoginScreen {
    @objc func tapButtonLogin(){
        print("tapButtonLogin")
        if (txt_Email_LoginScreen.txt_inputReusable.text == ""){
            let alert = UIAlertController(title: "Thông báo", message: "Vui lòng nhập UserName", preferredStyle: .alert)
            alert.addAction(.init(title: "Đồng ý", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if(txt_Password_LoginScreen.txt_inputReusable.text == ""){
            let alert = UIAlertController(title: "Thông báo", message: "Vui lòng nhập Email", preferredStyle: .alert)
            alert.addAction(.init(title: "Đồng ý", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        else {
            print("tapButtonLogin")
            let url = URL(string: Config.serverURL + "/login")
            var request = URLRequest(url: url!)
            request.httpMethod = "POST"
            var sData = "Username=" + self.txt_Email_LoginScreen.txt_inputReusable.text!
            sData += "&Password=" + self.txt_Password_LoginScreen.txt_inputReusable.text!
            let postData = sData.data(using: .utf8)
            request.httpBody = postData
            let taskUserRegister = URLSession.shared.dataTask(with: request, completionHandler: { data , response, error in
                guard error == nil else { print("error"); return }
                guard let data = data else { return }
                
                do{
                    guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:Any] else { return }
                    print(json)
                    
                    if(json["kq"] as! Int == 1){
                        //Login thanh cong
                        print("đăng nhập thành công")
                        //Tạo Token
                        let defaults = UserDefaults.standard
                        defaults.setValue(json["Token"], forKey: "UserToken")
                        print(defaults)
                        
                        DispatchQueue.main.async {
                            let sb = UIStoryboard(name: "Main", bundle: nil)
                            let vc  = sb.instantiateViewController(identifier: "NavigationBarController") as! NavigationBarController
                            self.navigationController?.pushViewController(vc, animated: true)
                           
                        }
                        
                    }
                    else {
                        //So sánh xem user đã đăng kí hay sai password
                        if(json["kq"] as! Int == 0){
                            
                            if(json["errMsg"] as! String == "Sai password.") {
                                DispatchQueue.main.async {
                                    let alert = UIAlertController(title: "Thông báo", message: "Sai password.", preferredStyle: .alert)
                                    alert.addAction(.init(title: "Đồng ý",
                                                          style: .cancel,
                                                          handler: nil))
                                    self.present(alert, animated: true, completion: nil)
                                }
                            }
                            
                            else {
                                DispatchQueue.main.async {
                                    let alert = UIAlertController(title: "Thông báo", message: "UserName chưa đăng kí", preferredStyle: .alert)
                                    alert.addAction(.init(title: "Đồng ý",
                                                          style: .cancel,
                                                          handler: nil))
                                    self.present(alert, animated: true, completion: nil)
                                }
                            }
                        }
                        
                    }
                    
                    //if
                }catch let error { print(error.localizedDescription) }
            })
            taskUserRegister.resume()
        }
    }
    
    
    @objc func superScreenTapGesture() {
        view.endEditing(true)
    }
   
}

