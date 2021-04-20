

import  UIKit
class WelcomeScreenViewController: BaseViewcontroller {
    //MARK:Properties
  
    @objc func tapgessture(){
        print("tapgessture1")
        let defaults = UserDefaults.standard
        if let UserToken = defaults.string(forKey: "UserToken"){
            
            //co token
            
            let url = URL(string: Config.serverURL + "/verifyToken")
            var request = URLRequest(url: url!)
            request.httpMethod = "POST"
            var sData = "Token=" + UserToken
            let postData = sData.data(using: .utf8)
            request.httpBody = postData
            
            let taskUserRegister = URLSession.shared.dataTask(with: request, completionHandler: { data , response, error in
                guard error == nil else { print("error"); return }
                guard let data = data else { return }
                
                do{
                    guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:Any] else { return }
                 
                    
                    if(json["kq"] as! Int == 1){
                        //Trùng Token
                        print(json)
                        DispatchQueue.main.async {
                            let sb = UIStoryboard(name: "Main", bundle: nil)
                            let vc = sb.instantiateViewController(identifier: "HomeScreenViewcontroller") as! HomeScreenViewcontroller
                            self.navigationController?.pushViewController(vc, animated: true)
                        }
                    }
                    else {
                        //alert that bai
                        DispatchQueue.main.async {
                            let alert = UIAlertController(title: "Thông báo", message: json["errMsg"] as? String, preferredStyle: .alert)
                            alert.addAction(.init(title: "Ok", style: .default, handler: nil))
                            self.present(alert,
                                         animated: true,
                                         completion: nil )
                            
                        }
                        
                        
                    }
                    
                    
                }catch let error { print(error.localizedDescription) }
            })
            taskUserRegister.resume()
            
        } else {
            //k co token
            //Đứng ở màn hình gốc
        }
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "LauchLoginScreen") as? LauchLoginScreen
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    //MARK: UI Elements


    private let viewForLogo:UIView = {
        let viewLogo = UIView()
        viewLogo.isUserInteractionEnabled = true
       
        return viewLogo
    }()

    private let imgLogoBG :UIImageView = {
        let imgLogoBG =  UIImageView()
        imgLogoBG.image = Resource.SourceImage.SourceImageLogin.logoBG

        return imgLogoBG
    }()

    private let imgLogo :UIImageView = {
        let imageLogo =  UIImageView()
        imageLogo.image = Resource.SourceImage.SourceImageLogin.logo

//
        return imageLogo
    }()

    private let lblFooterLogo :UILabel = {
        let txtFooter = UILabel()
        txtFooter.text = Resource.SourceSignInSignUpScreen.LauchScreen.lblFooterLogo.uppercased()
        txtFooter.font = UIFont.systemFont(ofSize: Demension.shared.smallCaptionFontSize_10)

        return txtFooter
    }()
    private let lblLeftLogo : UILabel = {
        let lblLeftLogo = UILabel()
        lblLeftLogo.text = Resource.SourceSignInSignUpScreen.LauchScreen.lblLeftLogo
        lblLeftLogo.font = UIFont.systemFont(ofSize: Demension.shared.titleFontSize_30)
        lblLeftLogo.font = UIFont(name:"HelveticaNeue-Bold", size: Demension.shared.titleFontSize_30)
        lblLeftLogo.textColor = Theme.shared.accentColor
        lblLeftLogo.textAlignment = .center

        return lblLeftLogo
    }()
    private  let lblRightLogo : UILabel = {
        let lblRightLogo = UILabel()
        lblRightLogo.text = Resource.SourceSignInSignUpScreen.LauchScreen.lblRightLogo
        lblRightLogo.font = UIFont.systemFont(ofSize: Demension.shared.titleFontSize_30)
        lblRightLogo.font = UIFont.boldSystemFont(ofSize:  Demension.shared.titleFontSize_30)
        lblRightLogo.font = UIFont(name:"HelveticaNeue-Bold", size: Demension.shared.titleFontSize_30)
        lblRightLogo.textAlignment = .center
        return lblRightLogo
    }()
    //MARK:Life Cycle
  
 
    override func initialize() {
        setupviewLogoWelcomeScreen()
        print("LauchLoginScreen")
        navigationController?.navigationBar.isHidden = true
    }
   
    private func setupviewLogoWelcomeScreen() {
        view.addSubview(viewForLogo)
        view.addSubview(imgLogoBG)
        view.addSubview(imgLogo)
        view.addSubview(lblFooterLogo)
        view.addSubview(lblLeftLogo)

        view.addSubview(lblRightLogo)
        viewForLogo.snp.makeConstraints({(make) in
            let labelTapGesture = UITapGestureRecognizer(target:self,action:#selector(tapgessture))
            viewForLogo.isUserInteractionEnabled = true
            viewForLogo.addGestureRecognizer(labelTapGesture)
            make.top.equalToSuperview().offset(Demension.shared.heightViewLogoScreen_314)
            make.left.equalTo(Demension.shared.widthlogoScreen_80)
            make.height.equalTo(Demension.shared.heightLogoScreen_184) 
            make.width.equalTo(Demension.shared.widthLogoScreen_216)

            imgLogoBG.snp.makeConstraints({(make) in
                make.left.top.bottom.right.equalToSuperview()
            })

            imgLogo.snp.makeConstraints({(make) in
                make.width.height.equalTo(Demension.shared.widthHeightLogo_104)
                make.top.equalTo(viewForLogo)
                make.centerX.equalTo(self.viewForLogo)
            })
            lblFooterLogo.snp.makeConstraints({(make) in
                make.bottom.equalTo(viewForLogo)
                make.centerX.equalTo(self.viewForLogo)

            })
            lblRightLogo.snp.makeConstraints({(make) in
                make.top.equalTo(imgLogo.snp.bottom).offset(Demension.shared.largeVerticalMargin)
                make.width.equalTo(Demension.shared.widthLogoTextField_132)
                make.right.equalTo(viewForLogo)
            })
            lblLeftLogo.snp.makeConstraints({(make) in
                make.left.equalTo(viewForLogo)
                make.top.height.equalTo(lblRightLogo)

            })
//
        })



    }


}

