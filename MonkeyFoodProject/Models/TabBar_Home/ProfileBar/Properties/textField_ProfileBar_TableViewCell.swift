//
//  textField_ProfileBar_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 12/04/2021.
//

import UIKit

class textField_ProfileBar_TableViewCell: UITableViewCell {
    //MARK:UI Elements
    private let defaults = UserDefaults.standard
    static let identifier = "textField_ProfileBar_TableViewCell"
    //MARK:Name
    private let viewReusable:UIView = {
        let view = UIView()
        view.layer.cornerRadius = Demension.shared.superCornerRadius_28
        view.backgroundColor = Theme.shared.backgroundColorTextField
        return view
        
    }()
    private let  lbl_NameProFileBar_Title:UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.layer.cornerRadius = Demension.shared.superCornerRadius_28
        label.backgroundColor = Theme.shared.backgroundColorTextField
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.smallCaptionFontSize_10)
        label.textColor = #colorLiteral(red: 0.7128108144, green: 0.7178489566, blue: 0.7176366448, alpha: 1)
        return label
    }()
    private let  lbl_NameProFileBar:UILabel = {
        let label = UILabel()
    
        
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.captionFontSize_14)
        
        return label
    }()
    //MARK:Email
    private let viewReusableEmail:UIView = {
        let view = UIView()
        view.layer.cornerRadius = Demension.shared.superCornerRadius_28
        view.backgroundColor = Theme.shared.backgroundColorTextField
        return view
        
    }()
    private let  lbl_EmailProFileBar_Title:UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.layer.cornerRadius = Demension.shared.superCornerRadius_28
        label.backgroundColor = Theme.shared.backgroundColorTextField
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.smallCaptionFontSize_10)
        label.textColor = #colorLiteral(red: 0.7128108144, green: 0.7178489566, blue: 0.7176366448, alpha: 1)
        return label
    }()
    private let  lbl_EmailProFileBar:UILabel = {
        let label = UILabel()
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.captionFontSize_14)
        return label
    }()
    
    //MARK:Mobile
    private let viewReusableMobile:UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = Demension.shared.superCornerRadius_28
        view.backgroundColor = Theme.shared.backgroundColorTextField
        return view
    }()
    
    private let  lbl_MobileProFileBar_Title:UILabel = {
        let label = UILabel()
        label.text = "Mobile"
        label.layer.cornerRadius = Demension.shared.superCornerRadius_28
        label.backgroundColor = Theme.shared.backgroundColorTextField
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.smallCaptionFontSize_10)
        label.textColor = #colorLiteral(red: 0.7128108144, green: 0.7178489566, blue: 0.7176366448, alpha: 1)
        return label
    }()
    
    private let  lbl_MobileProFileBar:UILabel = {
        let label = UILabel()
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.captionFontSize_14)
        return label
    }()
    
    
    //MARK:Address
    private let viewReusableAddress:UIView = {
        let view = UIView()
        view.layer.cornerRadius = Demension.shared.superCornerRadius_28
        view.backgroundColor = Theme.shared.backgroundColorTextField
        return view
        
    }()
    private let  lbl_AddressProFileBar_Title:UILabel = {
        let label = UILabel()
        label.text = "Address"
        label.layer.cornerRadius = Demension.shared.superCornerRadius_28
        label.backgroundColor = Theme.shared.backgroundColorTextField
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.smallCaptionFontSize_10)
        label.textColor = #colorLiteral(red: 0.7128108144, green: 0.7178489566, blue: 0.7176366448, alpha: 1)
        return label
    }()
    private let  lbl_AddressProFileBar:UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.captionFontSize_14)
        
        return label
    }()
    
    //MARK:Password
    private let viewReusablePassword:UIView = {
        let view = UIView()
        view.layer.cornerRadius = Demension.shared.superCornerRadius_28
        view.backgroundColor = Theme.shared.backgroundColorTextField
        return view
        
    }()
    private let  lbl_PasswordProFileBar_Title:UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.layer.cornerRadius = Demension.shared.superCornerRadius_28
        label.backgroundColor = Theme.shared.backgroundColorTextField
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.smallCaptionFontSize_10)
        label.textColor = #colorLiteral(red: 0.7128108144, green: 0.7178489566, blue: 0.7176366448, alpha: 1)
        return label
    }()
    private let  lbl_PasswordProFileBar:UILabel = {
        let label = UILabel()
        label.text = "*********"
        
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.captionFontSize_14)
        
        return label
    }()
    
    
    //MARK:ConformPassword
    private let viewReusableConformPassword:UIView = {
        let view = UIView()
        view.layer.cornerRadius = Demension.shared.superCornerRadius_28
        view.backgroundColor = Theme.shared.backgroundColorTextField
        return view
        
    }()
    private let  lbl_ConformPasswordProFileBar_Title:UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.layer.cornerRadius = Demension.shared.superCornerRadius_28
        label.backgroundColor = Theme.shared.backgroundColorTextField
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.smallCaptionFontSize_10)
        label.textColor = #colorLiteral(red: 0.7128108144, green: 0.7178489566, blue: 0.7176366448, alpha: 1)
        return label
    }()
    private let  lbl_ConformPasswordProFileBar:UILabel = {
        let label = UILabel()
        label.text = "*********"
        
        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.captionFontSize_14)
        
        return label
    }()
    
    //MARK:Object LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()
        loadDataUser()
        
        //name
        setup_viewReusable()
        setup_lbl_NameProFileBar_Title()
        setup_lbl_NameProFileBar()
        //email
        setup_viewReusableEmail()
        setup_lbl_EmailProFileBar_Title()
        setup_lbl_EmailProFileBar()
        //mobile
        setup_viewReusableMobile()
        setup_lbl_MobileProFileBar_Title()
        setup_lbl_MobileProFileBar()
        //Address
        setup_viewReusableAddress()
        setup_lbl_AddressProFileBar_Title()
        setup_lbl_AddressProFileBar()
        //Password
        setup_viewReusablePassword()
        setup_lbl_PasswordProFileBar_Title()
        setup_lbl_PasswordProFileBar()
        //ConformPassword
        setup_viewReusableConformPassword()
        setup_lbl_ConformPasswordProFileBar_Title()
        setup_lbl_ConformPasswordProFileBar()
        
    }
    
    //MARK:Setup UI Elements
    //name
    private func setup_viewReusable(){
        contentView.addSubview(viewReusable)
        viewReusable.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.normalVerticalMargin_16)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.width.equalTo(Demension.shared.defaultWidthButton_333)
            make.centerX.equalToSuperview()
        })
    }
    private func setup_lbl_NameProFileBar_Title(){
        viewReusable.addSubview(lbl_NameProFileBar_Title)
        lbl_NameProFileBar_Title.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.normalVerticalMargin_14)
            make.left.equalToSuperview().offset(Demension.shared.largeHorizontalMargin_34)
            
        })
    }
    private func setup_lbl_NameProFileBar(){
        viewReusable.addSubview(lbl_NameProFileBar)
        lbl_NameProFileBar.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_NameProFileBar_Title.snp.bottom).offset(Demension.shared.smallVerticalMargin_5)
            
            make.left.equalTo(lbl_NameProFileBar_Title)
            
        })
    }
    
    //email
    private func setup_viewReusableEmail(){
        contentView.addSubview(viewReusableEmail)
        
        viewReusableEmail.snp.makeConstraints({(make) in
            make.top.equalTo(viewReusable.snp.bottom).offset(Demension.shared.normalVerticalMargin_16)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.width.equalTo(Demension.shared.defaultWidthButton_333)
            make.centerX.equalToSuperview()
        })
    }
    private func setup_lbl_EmailProFileBar_Title(){
        viewReusableEmail.addSubview(lbl_EmailProFileBar_Title)
        lbl_EmailProFileBar_Title.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.normalVerticalMargin_14)
            make.left.equalToSuperview().offset(Demension.shared.largeHorizontalMargin_34)
            
        })
    }
    private func setup_lbl_EmailProFileBar(){
        viewReusableEmail.addSubview(lbl_EmailProFileBar)
        lbl_EmailProFileBar.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_EmailProFileBar_Title.snp.bottom).offset(Demension.shared.smallVerticalMargin_5)
            
            make.left.equalTo(lbl_EmailProFileBar_Title)
            
        })
    }
    //Mobile
    private func setup_viewReusableMobile(){
        contentView.addSubview(viewReusableMobile)
        
        viewReusableMobile.snp.makeConstraints({(make) in
            make.top.equalTo(viewReusableEmail.snp.bottom).offset(Demension.shared.normalVerticalMargin_16)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.width.equalTo(Demension.shared.defaultWidthButton_333)
            make.centerX.equalToSuperview()
        })
        
    }
    
    private func setup_lbl_MobileProFileBar_Title(){
        viewReusableMobile.addSubview(lbl_MobileProFileBar_Title)
        lbl_MobileProFileBar_Title.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.normalVerticalMargin_14)
            make.left.equalToSuperview().offset(Demension.shared.largeHorizontalMargin_34)
            
        })
    }
    private func setup_lbl_MobileProFileBar(){
        viewReusableMobile.addSubview(lbl_MobileProFileBar)
        lbl_MobileProFileBar.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_MobileProFileBar_Title.snp.bottom).offset(Demension.shared.smallVerticalMargin_5)
            
            make.left.equalTo(lbl_MobileProFileBar_Title)
            
        })
    }
    //Address
    private func setup_viewReusableAddress(){
        contentView.addSubview(viewReusableAddress)
        
        viewReusableAddress.snp.makeConstraints({(make) in
            make.top.equalTo(viewReusableMobile.snp.bottom).offset(Demension.shared.normalVerticalMargin_16)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.width.equalTo(Demension.shared.defaultWidthButton_333)
            make.centerX.equalToSuperview()
        })
        
    }
    private func setup_lbl_AddressProFileBar_Title(){
        viewReusableAddress.addSubview(lbl_AddressProFileBar_Title)
        lbl_AddressProFileBar_Title.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.normalVerticalMargin_14)
            make.left.equalToSuperview().offset(Demension.shared.largeHorizontalMargin_34)
            
        })
    }
    private func setup_lbl_AddressProFileBar(){
        viewReusableAddress.addSubview(lbl_AddressProFileBar)
        
        lbl_AddressProFileBar.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_AddressProFileBar_Title.snp.bottom).offset(Demension.shared.smallVerticalMargin_5)
            
            make.left.equalTo(lbl_AddressProFileBar_Title)
            make.right.equalToSuperview().offset(-Demension.shared.largeHorizontalMargin_34)
            
        })
    }
    //Password
    
    private func setup_viewReusablePassword(){
        contentView.addSubview(viewReusablePassword)
        
        viewReusablePassword.snp.makeConstraints({(make) in
            make.top.equalTo(viewReusableAddress.snp.bottom).offset(Demension.shared.normalVerticalMargin_16)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.width.equalTo(Demension.shared.defaultWidthButton_333)
            make.centerX.equalToSuperview()
        })
        
    }
    private func setup_lbl_PasswordProFileBar_Title(){
        viewReusablePassword.addSubview(lbl_PasswordProFileBar_Title)
        lbl_PasswordProFileBar_Title.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.normalVerticalMargin_14)
            make.left.equalToSuperview().offset(Demension.shared.largeHorizontalMargin_34)
            
        })
    }
    private func setup_lbl_PasswordProFileBar(){
        viewReusablePassword.addSubview(lbl_PasswordProFileBar)
        lbl_PasswordProFileBar.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_PasswordProFileBar_Title.snp.bottom).offset(Demension.shared.smallVerticalMargin_5)
            
            make.left.equalTo(lbl_PasswordProFileBar_Title)
            
        })
    }
    //ConformPassword
    
    private func setup_viewReusableConformPassword(){
        contentView.addSubview(viewReusableConformPassword)
        
        viewReusableConformPassword.snp.makeConstraints({(make) in
            make.top.equalTo(viewReusablePassword.snp.bottom).offset(Demension.shared.normalVerticalMargin_16)
            make.height.equalTo(Demension.shared.defaultHeightButton_56)
            make.width.equalTo(Demension.shared.defaultWidthButton_333)
            make.centerX.equalToSuperview()
        })
        
    }
    private func setup_lbl_ConformPasswordProFileBar_Title(){
        viewReusableConformPassword.addSubview(lbl_ConformPasswordProFileBar_Title)
        lbl_ConformPasswordProFileBar_Title.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.normalVerticalMargin_14)
            make.left.equalToSuperview().offset(Demension.shared.largeHorizontalMargin_34)
            
        })
    }
    private func setup_lbl_ConformPasswordProFileBar(){
        viewReusableConformPassword.addSubview(lbl_ConformPasswordProFileBar)
        lbl_ConformPasswordProFileBar.snp.makeConstraints({(make) in
            make.top.equalTo(lbl_ConformPasswordProFileBar_Title.snp.bottom).offset(Demension.shared.smallVerticalMargin_5)
            
            make.left.equalTo(lbl_ConformPasswordProFileBar_Title)
            
        })
    }
    
    private func loadDataUser(){
        
        if let UserToken = defaults.string(forKey: "UserToken"){
            
            //co token
            
            let url = URL(string: Config.serverURL + "/verifyToken")
            var request = URLRequest(url: url!)
            request.httpMethod = "POST"
            let sData = "Token=" + UserToken
            let postData = sData.data(using: .utf8)
            request.httpBody = postData
            
            let taskUserRegister = URLSession.shared.dataTask(with: request, completionHandler: { data , response, error in
                guard error == nil else { print("error"); return }
                guard let data = data else { return }
                
                do{
                    guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:Any] else { return }
                    if(json["kq"] as! Int == 1){
                        //Trùng Token
                        print(json["User"] as Any)
                        
                        let User = json["User"] as? [String: Any]
                        //                  print(User!["Email"]!)
                        DispatchQueue.main.async {
                            self.lbl_NameProFileBar.text = User!["Username"]! as? String
                            self.lbl_EmailProFileBar.text = User!["Email"]! as? String
                            self.lbl_MobileProFileBar.text = User!["Mobile"]! as? String
                            self.lbl_AddressProFileBar.text = User!["Address"]! as? String
                            
                        }
                    }
                    else {
                        //alert that bai
                        print("Không Trùng Token")
                        
                    }
                    
                }catch let error { print(error.localizedDescription) }
            })
            taskUserRegister.resume()
            
        } else {
            //k co token
            //Đứng ở màn hình gốc
        }
        
    }
    
}



