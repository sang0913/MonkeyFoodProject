////
////  WelcomeScreenViewController.swift
////  TestLoginScreeen
////
////  Created by sang1 on 04/04/2021.
////
//
//import UIKit
//class WelcomeScreenViewController: UIViewController {
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
////        let viewShadow = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
////        viewShadow.center = self.view.center
////        viewShadow.backgroundColor = UIColor.yellow
////        viewShadow.layer.shadowColor = UIColor.gray.cgColor
////        viewShadow.layer.shadowOpacity = 50
////        viewShadow.layer.shadowOffset = CGSize.zero
////        viewShadow.layer.shadowRadius = 50
////        self.view.addSubview(viewShadow)
//    }
//


import  UIKit
class WelcomeScreenViewController: BaseViewcontroller {
    //MARK: UI Elements


    private let viewForLogo:UIView = {
        let viewLogo = UIView()

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
        
        
    }

    private func setupviewLogoWelcomeScreen() {
        view.addSubview(viewForLogo)
        view.addSubview(imgLogoBG)
        view.addSubview(imgLogo)
        view.addSubview(lblFooterLogo)
        view.addSubview(lblLeftLogo)

        view.addSubview(lblRightLogo)
        viewForLogo.snp.makeConstraints({(make) in
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

