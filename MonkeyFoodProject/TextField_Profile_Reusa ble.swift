////
////  lbl_Top_Title.swift
////  MonkeyFoodProject
////
////  Created by sang1 on 07/04/2021.
////
//
//
//import UIKit
//public class TextField_Profile_Reusable:BaseUIView {
//   
//    //MARK:Setup UI Elements
//    var lbl_title :String? {
//        didSet {
//            lbl_title_ProFileBar.text = lbl_title
//        }
//    }
//    public var lbl_Name:String? {
//           didSet {
//            lbl_content_ProFileBar .text = lbl_Name
//           }
//           
//       }
//    private let viewReusable:UIView = {
//       let view = UIView()
//        view.layer.cornerRadius = 28
//        view.backgroundColor = Theme.shared.backgroundColorTextField
//        return view
//        
//    }()
//     private let  lbl_title_ProFileBar:UILabel = {
//     let label = UILabel()
//        label.text = "Name"
//        label.layer.cornerRadius = 26
//        label.backgroundColor = Theme.shared.backgroundColorTextField
//        label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.smallCaptionFontSize_10)
//        label.textColor = #colorLiteral(red: 0.7128108144, green: 0.7178489566, blue: 0.7176366448, alpha: 1)
//         return label
//     }()
//    private let  lbl_content_ProFileBar:UILabel = {
//    let label = UILabel()
//       label.text = "Emilia Clarke"
//     
//       label.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisRegular, size: Demension.shared.captionFontSize_14)
//
//        return label
//    }()
//    
//    //MARK:Object LifeCycle
//    public override func initialize() {
//    
//    }
//
//
//  //MARK:Object LifeCycle
//    
//
//
//  //MARK:Setup UI Elements
//
//private func setup_viewReusable(){
//    addSubview(viewReusable)
//    viewReusable.snp.makeConstraints({(make) in
//        make.height.equalTo(Demension.shared.defaultHeightButton_56)
//        make.width.equalTo(Demension.shared.defaultWidthButton_333)
//        make.centerX.equalToSuperview()
//    })
//}
//    
//private func setup_lbl_NameProFileBar_Title(){
//    viewReusable.addSubview(lbl_title_ProFileBar)
//    lbl_title_ProFileBar.snp.makeConstraints({(make) in
//        make.top.equalToSuperview().offset(Demension.shared.normalVerticalMargin_14)
//        make.left.equalToSuperview().offset(Demension.shared.largeHorizontalMargin_34)
//        
//    })
//}
//private func setup_lbl_NameProFileBar(){
//    viewReusable.addSubview(lbl_content_ProFileBar)
//    lbl_content_ProFileBar.snp.makeConstraints({(make) in
//        make.left.equalTo(lbl_title_ProFileBar)
//        make.top.equalTo(lbl_title_ProFileBar.snp.bottom).offset(Demension.shared.smallVerticalMargin_5)
//        
//        
//    })
//}
//}
