//
//  SignUpScreen.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 07/04/2021.
//

import UIKit
class SignUpScreen:BaseViewcontroller {
    
    @IBOutlet var mySpiner: UIActivityIndicatorView!
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
        print(txt_Name.txt_inputReusable.text!)
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
        textField.isercurityTextEntry = true
        textField.txtPlaceholder = Resource.SourceSignInSignUpScreen.SignUpScreen.txt_Placeholder_Password
        return textField
    }()
    
    private let txt_ComformPassword_SignUp:textField_InPut_Reusable = {
        let textField = textField_InPut_Reusable()
        textField.isercurityTextEntry = true
        textField.txtPlaceholder = Resource.SourceSignInSignUpScreen.SignUpScreen.txt_Placeholder_Confirm_Password
        return textField
    }()
    
    private let button_SignUpScreen:ButtonPrimaryColor = {
        let button = ButtonPrimaryColor()
        
        
        button.button_Primary.setTitle(Resource.SourceSignInSignUpScreen.SignUpScreen.TopTile_SignUp, for: .normal)
        button.button_Primary.addTarget(self, action: #selector(tapButtonSignUp), for: .touchUpInside)
        return button
    }()
    
    private let lbl_titleFooter_SignUpScreen :lbl_Footer_Login_Reusable = {
        let label = lbl_Footer_Login_Reusable()
        label.lbl_footerLeft_Reusable.text = Resource.SourceSignInSignUpScreen.LoginScreen.titleFooterLoginLeft
        label.lbl_footerRight_Reusable.text = Resource.SourceSignInSignUpScreen.LoginScreen.TopTile_Login
        
        return label
    }()
    
    
    
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
        
        let screenTapGesture = UITapGestureRecognizer(target: self, action: #selector(superScreenTapGesture))
        view.addGestureRecognizer(screenTapGesture)
        view.addSubview(mySpiner)
        mySpiner.backgroundColor = .black
        mySpiner.isHidden = true
        mySpiner.alpha = 0.4
        
    }
    
    //MARK:Setup UI Elements
    private func setup_lbl_Top_Title_SignUp(){
        view.addSubview(lbl_Top_Title_SignUp)
        lbl_Top_Title_SignUp.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_90)
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
            make.top.equalTo(txt_Name_SignUp.snp.bottom).offset(Demension.shared.normalVerticalMargin_14)
            make.width.equalTo(Demension.shared.defaultWidthButton_307)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.centerX.equalToSuperview()
        })
    }
    private func setup_txt_Mobile_SignUp(){
        view.addSubview(txt_Mobile_SignUp)
        txt_Mobile_SignUp.snp.makeConstraints({(make) in
            make.top.equalTo(txt_Email_SignUp.snp.bottom).offset(Demension.shared.normalVerticalMargin_14)
            make.width.equalTo(Demension.shared.defaultWidthButton_307)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.centerX.equalToSuperview()
        })
    }
    private func setup_txt_Address_SignUp(){
        view.addSubview(txt_Address_SignUp)
        txt_Address_SignUp.snp.makeConstraints({(make) in
            make.top.equalTo(txt_Mobile_SignUp.snp.bottom).offset(Demension.shared.normalVerticalMargin_14)
            make.width.equalTo(Demension.shared.defaultWidthButton_307)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.centerX.equalToSuperview()
        })
    }
    private func setup_txt_Password_SignUp(){
        view.addSubview(txt_Password_SignUp)
        txt_Password_SignUp.snp.makeConstraints({(make) in
            make.top.equalTo(txt_Address_SignUp.snp.bottom).offset(Demension.shared.normalVerticalMargin_14)
            make.width.equalTo(Demension.shared.defaultWidthButton_307)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.centerX.equalToSuperview()
        })
    }
    private func setup_txt_ComformPassword_SignUp(){
        view.addSubview(txt_ComformPassword_SignUp)
        txt_ComformPassword_SignUp.snp.makeConstraints({(make) in
            make.top.equalTo(txt_Password_SignUp.snp.bottom).offset(Demension.shared.normalVerticalMargin_14)
            make.width.equalTo(Demension.shared.defaultWidthButton_307)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.centerX.equalToSuperview()
        })
    }
    
    private func setup_LoginButon_LoginScreen(){
        view.addSubview( button_SignUpScreen)
        button_SignUpScreen.snp.makeConstraints({(make) in
            make.top.equalTo(txt_ComformPassword_SignUp.snp.bottom).offset(Demension.shared.normalVerticalMargin_14)
            make.width.height.equalTo(txt_ComformPassword_SignUp)
            make.centerX.equalToSuperview()
        })
    }
    
    private func setup_lbl_titleFooter_LoginScreen(){
        view.addSubview( lbl_titleFooter_SignUpScreen)
        view.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(lbl_titleFooter_SignUpScreen_Tapgesture))
        self.lbl_titleFooter_SignUpScreen.addGestureRecognizer(tapGesture)
        
        lbl_titleFooter_SignUpScreen.snp.makeConstraints({(make) in
            make.bottom.equalToSuperview().offset(-Demension.shared.normalVerticalMargin_14)
            
            make.centerX.equalToSuperview()
        })
    }
}

extension SignUpScreen {
    
    //MARK:Button Send data
    @objc func tapButtonSignUp(){
      
        if (txt_Name_SignUp.txt_inputReusable.text == ""){
            let alert = UIAlertController(title: "Th??ng b??o", message: "Vui l??ng nh???p UserName", preferredStyle: .alert)
            alert.addAction(.init(title: "?????ng ??", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if(txt_Email_SignUp.txt_inputReusable.text == ""){
            let alert = UIAlertController(title: "Th??ng b??o", message: "Vui l??ng nh???p Email", preferredStyle: .alert)
            alert.addAction(.init(title: "?????ng ??", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if(txt_Mobile_SignUp.txt_inputReusable.text == ""){
            let alert = UIAlertController(title: "Th??ng b??o", message: "Vui l??ng nh???p Mobile", preferredStyle: .alert)
            alert.addAction(.init(title: "?????ng ??", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if(txt_Address_SignUp.txt_inputReusable.text == ""){
            let alert = UIAlertController(title: "Th??ng b??o", message: "Vui l??ng nh???p Address", preferredStyle: .alert)
            alert.addAction(.init(title: "?????ng ??", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if(txt_Password_SignUp.txt_inputReusable.text == ""){
            let alert = UIAlertController(title: "Th??ng b??o", message: "Vui l??ng nh???p Password", preferredStyle: .alert)
            alert.addAction(.init(title: "?????ng ??", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if(txt_ComformPassword_SignUp.txt_inputReusable.text == ""){
            let alert = UIAlertController(title: "Th??ng b??o", message: "Vui l??ng nh???p ComformPassword", preferredStyle: .alert)
            alert.addAction(.init(title: "?????ng ??", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        else if(txt_ComformPassword_SignUp.txt_inputReusable.text != txt_Password_SignUp.txt_inputReusable.text){
            let alert = UIAlertController(title: "Th??ng b??o", message: "Vui l??ng nh???p ????ng x??c nh???n m???t kh???u", preferredStyle: .alert)
            alert.addAction(.init(title: "?????ng ??", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        
        else {
            print("tapButtonLogin")
            let url = URL(string: Config.serverURL + "/register")
            var request = URLRequest(url: url!)
            request.httpMethod = "POST"
            var sData = "Username=" + self.txt_Name_SignUp.txt_inputReusable.text!
            sData += "&Password=" + self.txt_Password_SignUp.txt_inputReusable.text!
            sData += "&Email=" + self.txt_Email_SignUp.txt_inputReusable.text!
            sData += "&Mobile=" + self.txt_Mobile_SignUp.txt_inputReusable.text!
            sData += "&Address=" + self.txt_Address_SignUp.txt_inputReusable.text!
            
            self.mySpiner.isHidden = false
            self.mySpiner.startAnimating()
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
                        
                        print("????ng k?? th??nh c??ng")
                        //alert th??nh c??ng
                        let defaults = UserDefaults.standard
                        defaults.setValue(json["Token"], forKey: "UserToken")
                        print(defaults)
                        DispatchQueue.main.async {
                            let alert = UIAlertController(title: "Th??ng b??o", message: "????ng k?? th??nh c??ng", preferredStyle: .alert)
                            alert.addAction(.init(title: "?????ng ??",
                                                  style: .cancel,
                                                  handler: {[weak self] _ in
                                                    guard let strongSelf = self else { return}
                                                    self?.navigationController?.popViewController(animated: true)
                                                    //                                                                            self.navigationController?.navigationBar.isHidden = true
                                                    
                                                  } ))
                            
                            self.present(alert, animated: true, completion: nil)
                            
                            
                        }
                        
                        
                    }
                    else {
                        //                                                  alert that bai
                        
                        DispatchQueue.main.async {
                            let alert = UIAlertController(title: "Th??ng b??o", message: "Username/Email ???? t???n t???i", preferredStyle: .alert)
                            alert.addAction(.init(title: "?????ng ??",
                                                  style: .cancel,
                                                  handler: nil))
                            self.present(alert, animated: true, completion: nil)
                            self.mySpiner.isHidden = true
                        }
                    }
                }catch let error { print(error.localizedDescription) }
            })
            taskUserRegister.resume()
        }
        
    }
    
    
    @objc func lbl_titleFooter_SignUpScreen_Tapgesture(){
        self.navigationController?.popViewController(animated: true)
        print("t??p")
    }
    
    @objc func superScreenTapGesture() {
        view.endEditing(true)
    }
}
