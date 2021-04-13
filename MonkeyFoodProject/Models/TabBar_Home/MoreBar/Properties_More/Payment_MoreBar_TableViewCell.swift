//
//  Payment_MoreBar_TableViewCell.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 13/04/2021.
//

import UIKit

class Payment_MoreBar_TableViewCell: UITableViewCell {
    static let identifier = "Payment_MoreBar_TableViewCell"
    
    //MARK:UI Elements
    private let view_Payment_Container: UIView = {
       let view = UIView()
        view.backgroundColor = Theme.shared.backgroundColorTextField
        view.layer.cornerRadius = Demension.shared.mediumCornerRadius
        
        return view
    }()
    private let view_Payment_Icon: UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8469843268, green: 0.8471066356, blue: 0.8469575047, alpha: 1)
        view.layer.cornerRadius = Demension.shared.defaultHeightButton_53 / 2
        
        return view
    }()
    private let img_Payment: UIImageView = {
       let img = UIImageView()
      
        img.image = UIImage(named: "hand")
        img.contentMode = .center
        return img
    }()
    //lable
    private let lbl_Title_Payment: UILabel = {
       let label = UILabel()
        label.text = "Payment Details"
   
        return label
    }()
    
    private let view_Arroww: UIView = {
       let view = UIView()
        view.backgroundColor = Theme.shared.backgroundColorTextField
        view.layer.cornerRadius = 17
        view.layer.masksToBounds = true
        return view
    }()
    private let img_ArrowGray: UIImageView = {
       let img = UIImageView()
        img.contentMode = .center
        img.image = UIImage(named: "arrowGray")
        
        return img
    }()
      //MARK:Object LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()
        setup_view_Payment_Container()
        setup_view_Payment_Icon()
        setup_img_Payment()
        setup_lbl_Title_Payment()
        setup_view_Arroww_Payment()
        setup_img_ArrowGray_Payment()
    }

     
      //MARK:Setup UI Elements
    private func setup_view_Payment_Container(){
        contentView.addSubview(view_Payment_Container)
        view_Payment_Container.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_30)
            make.width.equalTo(Demension.shared.defaultWidthButton_333)
            make.height.equalTo(Demension.shared.largeVerticalMargin_75)
            make.centerX.equalToSuperview()
        })
    }
    private func setup_view_Payment_Icon(){
        view_Payment_Container.addSubview(view_Payment_Icon)
       
        view_Payment_Icon.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.normalVerticalMargin_13)
            make.left.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_13)
           
            make.width.equalTo(Demension.shared.widthScale * 53)
            make.height.equalTo(Demension.shared.heightScale * 53)
         
            
         
       })
   }
   private func setup_img_Payment(){
        view_Payment_Icon.addSubview(img_Payment)
    
        img_Payment.snp.makeConstraints({(make) in
            make.center.equalToSuperview()
            make.width.equalTo(Demension.shared.largeHorizontalMargin_30)
          
            make.height.equalTo(Demension.shared.largeVerticalMargin_30)
           
           

       })
   }
    private func setup_lbl_Title_Payment(){
         view_Payment_Container.addSubview(lbl_Title_Payment)
     
        lbl_Title_Payment.snp.makeConstraints({(make) in
            make.left.equalTo(view_Payment_Icon.snp.right).offset(Demension.shared.normalHorizontalMargin_20)
            make.centerY.equalToSuperview()
        })
    }
    private func setup_view_Arroww_Payment(){
         view_Payment_Container.addSubview(view_Arroww)
       
        view_Arroww.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_22)
            make.right.equalToSuperview().offset(Demension.shared.normalHorizontalMargin_17)
           make.width.height.equalTo(Demension.shared.largeHorizontalMargin_33)
        })
    }
    private func setup_img_ArrowGray_Payment(){
        view_Arroww.addSubview(img_ArrowGray)
    
        img_ArrowGray.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.normalVerticalMargin_11)
            make.left.equalTo(Demension.shared.normalHorizontalMargin_18)
            make.width.equalTo(Demension.shared.smallHorizontalMargin_6)
            make.height.equalTo(Demension.shared.normalVerticalMargin_11)
       })
   }
}



