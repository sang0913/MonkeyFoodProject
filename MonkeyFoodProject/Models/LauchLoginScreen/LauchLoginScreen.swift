////
////  LoginScreenViewController.swift
////  TestLoginScreeen
////
////  Created by sang1 on 04/04/2021.
////
//
import UIKit
//
class LauchLoginScreen: BaseViewcontroller {
    
    
      override func viewDidAppear(_ animated: Bool) {
          print("viewDidAppearLauchLoginScreen")
      
      }
      override func viewDidDisappear(_ animated: Bool) {
          print("viewDidDisappearLauchLoginScreen")
      }
      override func viewWillAppear(_ animated: Bool) {
          print("viewWillAppearLauchLoginScreen")
        navigationController?.navigationBar.isHidden = true
        
      }
      override func viewWillDisappear(_ animated: Bool) {
          print("viewWillDisappearLauchLoginScreen")
      }
    //MARK: UI Elements
    //View lớn bao trùm lên 3 chủ thể viewcon
    private let viewForLogo:UIView = {
        let viewLogo = UIView()
        
        return viewLogo
    }()
    private let imgLogoLogin :UIImageView = {
        let imgLogoLogin =  UIImageView()
        imgLogoLogin.image = Resource.SourceImage.SourceImageLogin.logo
        
        return imgLogoLogin
    }()
    
    private let imageTopLogin : UIImageView = {
        let image  = UIImageView()
        image.image = Resource.SourceImage.SourceImageLogin.ImageTopLogin
        image.contentMode = .scaleAspectFill
        
        return image
    }()
    
    
    
    private  let txtFooterLogin :UILabel = {
        let txtFooterLogin = UILabel()
        txtFooterLogin.text = Resource.SourceSignInSignUpScreen.LauchScreen.lblFooterLogo.uppercased()
        txtFooterLogin.font = UIFont.systemFont(ofSize: Demension.shared.smallCaptionFontSize_10)
        
        return txtFooterLogin
    }()
    private let lblLeftLogoLogin : UILabel = {
        let lblLeftLogoLogin = UILabel()
        lblLeftLogoLogin.text = Resource.SourceSignInSignUpScreen.LauchScreen.lblLeftLogo
        
        lblLeftLogoLogin.font = UIFont(name:Resource.Fonts.Metropolis.MetropolisBold,
                                       size: Demension.shared.big_titleFontSize_34)
        lblLeftLogoLogin.textColor = Theme.shared.accentColor
        
        
        return lblLeftLogoLogin
    }()
    private let lblRightLogoLogin : UILabel = {
        let lblRightLogoLogin = UILabel()
        lblRightLogoLogin.text = Resource.SourceSignInSignUpScreen.LauchScreen.lblRightLogo
        
        lblRightLogoLogin.font = UIFont(name:Resource.Fonts.Metropolis.MetropolisBold,
                                        size: Demension.shared.big_titleFontSize_34)
        
        return lblRightLogoLogin
        
        
    }()
    
    private  let titleLoginScreen : UILabel = {
        let titleLogin = UILabel()
        
        titleLogin.text = Resource.SourceSignInSignUpScreen.LauchScreen.titleLoginScreen
        titleLogin.textAlignment = .center
        titleLogin.numberOfLines = 2
        titleLogin.font = UIFont.systemFont(ofSize: Demension.shared.captionFontSize_13)
        
        return titleLogin
    }()
    
    
    //MARK:Button
    private let button_LoginLauchScreen:ButtonPrimaryColor = {
        let button = ButtonPrimaryColor()
        button.button_Primary.setTitle(Resource.SourceSignInSignUpScreen.LauchScreen.titleButtonLogin, for: .normal)
        button.button_Primary.addTarget(self, action: #selector(tappedButtonLogin), for: .touchUpInside)
        return button
    }()
   private let button_CreateLauchScreen:ButtonPrimaryColor = {
        let button = ButtonPrimaryColor()
// vì lơp kế thừa đã set màu nên phải custom lại setting cho lớp này.
        button.button_Primary.setTitle(Resource.SourceSignInSignUpScreen.LauchScreen.titleButtonCreate, for: .normal)
        button.button_Primary.setTitleColor(Theme.shared.accentColor, for: .normal)
        button.button_Primary.backgroundColor = .white
        button.layer.borderWidth = 2
        button .layer.cornerRadius = Demension.shared.superCornerRadius_28
        button.layer.borderColor = Theme.shared.accentColor.cgColor
        button.button_Primary.addTarget(self, action: #selector(tappedButtonCreate), for: .touchUpInside)
//
        return button
    }()
    //MARK:Tap Button
    @objc func tappedButtonLogin(){
        print("touch")
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "LoginScreen") as! LoginScreen
        self.navigationController?.pushViewController(vc, animated: true)
        navigationController?.navigationBar.isHidden = false
    }
    
    @objc func tappedButtonCreate(){
        print("touchtappedButtonCreate")
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "SignUpScreen") as! SignUpScreen
        self.navigationController?.pushViewController(vc, animated: true)
        navigationController?.navigationBar.isHidden = false
    }
    //MARK:Life Cycle
    
    override func initialize() {
        setupviewLogoWelcomeScreen()
        setupImageTopLogin()
        setUptitleLoginScreen()
        setup_button_LoginLauchScreen()
        setup_button_CreateLauchScreen()
      
        
    }
    //MARK:Setup view
    
    
    
    private func setupviewLogoWelcomeScreen() {
        view.addSubview(viewForLogo)
        view.addSubview(imgLogoLogin)
        view.addSubview(txtFooterLogin)
        view.addSubview(lblLeftLogoLogin)
        view.addSubview(lblRightLogoLogin)
        viewForLogo.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.heightViewLogoScreen_314)
            make.left.equalTo(Demension.shared.widthlogoScreen_80)
            make.height.equalTo(Demension.shared.heightLogoScreen_184)
            make.width.equalTo(Demension.shared.widthLogoScreen_216)
            
            
            imgLogoLogin.snp.makeConstraints({(make) in
                make.width.height.equalTo(Demension.shared.widthHeightLogo_104)
                make.top.equalTo(viewForLogo)
                make.centerX.equalTo(self.viewForLogo)
            })
            txtFooterLogin.snp.makeConstraints({(make) in
                make.bottom.equalTo(viewForLogo)
                make.centerX.equalTo(self.viewForLogo)
                
            })
            lblRightLogoLogin.snp.makeConstraints({(make) in
                make.top.equalTo(imgLogoLogin.snp.bottom).offset(Demension.shared.largeVerticalMargin)
                make.width.equalTo(Demension.shared.widthLogoTextField_132)
                make.right.equalTo(viewForLogo)
            })
            lblLeftLogoLogin.snp.makeConstraints({(make) in
                make.left.equalTo(viewForLogo)
                make.top.height.equalTo(lblRightLogoLogin)
                
            })
            
        })
        
        
        
    }
    
    private  func setupImageTopLogin() {
        view.addSubview(imageTopLogin)
        imageTopLogin.snp.makeConstraints({(make) in
            make.left.right.equalToSuperview()
            make.height.equalTo(Demension.shared.defaultHeightScreen_812 / 2.1)
            
        })
    }
    private func setUptitleLoginScreen(){
        view.addSubview(titleLoginScreen)
        titleLoginScreen.snp.makeConstraints({(make) in
            
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.top.equalTo(viewForLogo.snp.bottom).offset(Demension.shared.largeVerticalMargin_30)
            make.left.equalTo(Demension.shared.largeHorizontalMargin_32)
            make.right.equalToSuperview().offset(-Demension.shared.largeHorizontalMargin_32)
            
            
        })
        
    }
    
    //MARK:setup Button
    private func setup_button_LoginLauchScreen(){
        view.addSubview(button_LoginLauchScreen)
        button_LoginLauchScreen.snp.makeConstraints({(make) in
            
            make.top.equalTo(titleLoginScreen.snp.bottom).offset(Demension.shared.largeVerticalMargin_36)
            make.centerX.equalToSuperview()
            make.width.equalTo(Demension.shared.defaultWidthButton_307)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
        })
        
    }
    private func setup_button_CreateLauchScreen(){
        view.addSubview( button_CreateLauchScreen)
        button_CreateLauchScreen.snp.makeConstraints({(make) in
            
            make.top.equalTo(button_LoginLauchScreen.snp.bottom).offset(Demension.shared.normalVerticalMargin_20)
            make.left.right.height.equalTo(button_LoginLauchScreen)
        })
        
    }
    
    
   
    
}

