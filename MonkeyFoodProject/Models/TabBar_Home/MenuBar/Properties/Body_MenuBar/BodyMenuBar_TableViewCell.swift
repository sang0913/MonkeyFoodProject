
import UIKit
class BodyMenuBar_TableViewCell: UITableViewCell {
    
    static let identifier = "BodyMenuBar_TableViewCell"
    //MARK:Object LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()
        setup_viewBodyMenuBar()
        setup_img_SidebarOrange()
        setup_ViewFood_LargeView ()
   
  
        //Food Body
        setup_ViewFood_BodyMenuBarItem()
        setup_img_ViewFood_BodyMenuBar()
        setup_lbl_FoodTitle()
        setup_lbl_CountItem()
        setup_ViewFood_forArrow()
        setup_img_arrowHorizontalMenuBar()
        setup_viewBodyMenuBar()
      
        //Beverages
        setup_ViewBeverages_LargeView()

        setup_ViewBeverages_BodyMenuBarItem()
        setup_img_ViewBeverages_BodyMenuBar()
        setup_lbl_TiTle_ViewBeverages()
        setup_lbl_CountItem_ViewBeverages()
        setup_ViewBeverages_forArrow()
        setup_img_arrow_ViewBeverages()

        //Deserts
        setup_ViewDesserts_LargeView()
        setup_ViewDesserts_BodyMenuBarItem()
        setup_img_ViewDesserts_BodyMenuBar()
        setup_lbl_TiTle_ViewDesserts()
        setup_lbl_CountItem_ViewDesserts()
        setup_ViewDesserts_forArrow()
        setup_img_arrow_ViewDesserts()

        //Promotions
        setup_ViewPromotions_LargeView()
        setup_ViewPromotions_BodyMenuBarItem()
        setup_img_ViewPromotion_BodyMenuBar()
        setup_lbl_TiTle_ViewPromotions()
        setup_lbl_CountItem_ViewPromotions()
        setup_ViewPromotions_forArrow()
        setup_img_arrow_ViewPromotions()
    }
    
    //MARK:View tổng chứa body và side bar
    private let viewBodyMenuBar :UIView = {
        let view = UIView()
      
        return view
    }()
    
    private let img_SidebarOrange:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "SideBarOrange")
        
        image.contentMode = .scaleToFill
        return image
    }()
    
    //MARK:Food UI
    private let ViewFood_LargeView :ViewReusble = {
        let view = ViewReusble()
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 5
        return view
    }()
     let ViewFood_BodyMenuBarItem :UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.isUserInteractionEnabled = true
        view.layer.cornerRadius = Demension.shared.largeVerticalMargin_36
        view.layer.masksToBounds = true
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
        return view
    }()
    private let img_ViewFood_BodyMenuBar:UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "s1")
        
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = Demension.shared.largeVerticalMargin_36
        image.layer.masksToBounds = true
        return image
    }()
    
    private let lbl_FoodTitle:UILabel = {
        let lable = UILabel()
        lable.text = "Food"
        
        lable.textAlignment = .center
        lable.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisBold, size: Demension.shared.titleFontSize_20)
        return lable
    }()
    private let lbl_CountItemFood:UILabel = {
        let lable = UILabel()
        lable.text = "120 Items"
        
        lable.textAlignment = .center
        lable.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisThin, size: Demension.shared.smallCaptionFontSize_11)
        return lable
    }()
    //Arrow and view
    private let ViewFood_forArrow :UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.shadowOffset = .zero
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowRadius = 5
        
        view.layer.cornerRadius = Demension.shared.normalVerticalMargin_17
        return view
    }()
    private let img_arrowViewFood:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "arrowHorizontal")
        
        image.contentMode = .scaleAspectFill
        
        return image
    }()
    
    //MARK: Beverages UI
    private let ViewBeverages_LargeView :UIView = {
        let view = UIView()
        view.layer.masksToBounds = false
      
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 5
        return view
    }()
    private let ViewBeverages_BodyMenuBarItem :UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.isUserInteractionEnabled = true
        view.layer.cornerRadius = 35
        view.layer.masksToBounds = true
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
        return view
    }()
    private let img_ViewBeverages_BodyMenuBar:UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "4444")
        
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = Demension.shared.largeVerticalMargin_36
        image.layer.masksToBounds = true
        return image
    }()
    
    let lbl_TiTle_ViewBeverages:UILabel = {
        let lable = UILabel()
        lable.text = "Beverages"
        
        lable.textAlignment = .center
        lable.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisBold, size: Demension.shared.titleFontSize_20)
        return lable
    }()
    let lbl_CountItem_ViewBeverages:UILabel = {
        let lable = UILabel()
        lable.text = "220 Items"
        
        lable.textAlignment = .center
        lable.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisThin, size: Demension.shared.smallCaptionFontSize_11)
        return lable
    }()
    //Arrow and view
    private let ViewBeverages_forArrow :UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.shadowOffset = .zero
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowRadius = 5
        
        view.layer.cornerRadius = Demension.shared.normalVerticalMargin_17
        return view
    }()
    private let img_arrow_ViewBeverages:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "arrowHorizontal")
        
        image.contentMode = .scaleAspectFill
        
        return image
    }()
    
 
    
    //MARK: Desserts UI
    private let ViewDessert_LargeView :ViewReusble = {
        let view = ViewReusble()
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
    
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 5
        return view
    }()
    private let ViewDessert_BodyMenuBarItem :UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.isUserInteractionEnabled = true
        view.layer.cornerRadius = 35
        view.layer.masksToBounds = true
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
        return view
    }()
    private let img_ViewDesserts_BodyMenuBar:UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "s2")
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = Demension.shared.largeVerticalMargin_36
        image.layer.masksToBounds = true
        return image
    }()
    
    let lbl_TiTle_ViewDesserts:UILabel = {
        let lable = UILabel()
        lable.text = "Desserts"
        
        lable.textAlignment = .center
        lable.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisBold, size: Demension.shared.titleFontSize_20)
        return lable
    }()
    let lbl_CountItem_ViewDesserts:UILabel = {
        let lable = UILabel()
        lable.text = "155 Items"
        
        lable.textAlignment = .center
        lable.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisThin, size: Demension.shared.smallCaptionFontSize_11)
        return lable
    }()
    //Arrow and view
    private let ViewDesserts_forArrow :UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.shadowOffset = .zero
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowRadius = 5
        view.layer.cornerRadius = Demension.shared.normalVerticalMargin_17
        return view
    }()
    private let img_arrow_ViewDesserts:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "arrowHorizontal")
        
        image.contentMode = .scaleAspectFill
        
        return image
    }()
    
    //MARK: Promotions UI
    private let ViewPromotions_LargeView :ViewReusble = {
        let view = ViewReusble()
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
       
        
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 5
        return view
    }()
    private let ViewPromotions_BodyMenuBarItem :UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.isUserInteractionEnabled = true
        view.layer.cornerRadius = 35
        view.layer.masksToBounds = true
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
        return view
    }()
    private let img_ViewPromotions_BodyMenuBar:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "s9")
        
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = Demension.shared.largeVerticalMargin_36
        image.layer.masksToBounds = true
        return image
    }()
    
    let lbl_TiTle_ViewPromotions:UILabel = {
        let lable = UILabel()
        lable.text = "Promotions"
        
        lable.textAlignment = .center
        lable.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisBold, size: Demension.shared.titleFontSize_20)
        return lable
    }()
    let lbl_CountItem_ViewPromotions:UILabel = {
        let lable = UILabel()
        lable.text = "25 Items"
        
        lable.textAlignment = .center
        lable.font = UIFont(name: Resource.Fonts.Metropolis.MetropolisThin, size: Demension.shared.smallCaptionFontSize_11)
        return lable
    }()
    //Arrow and view
    private let ViewPromotions_forArrow :UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.shadowOffset = .zero
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowRadius = 5
        
        view.layer.cornerRadius = Demension.shared.normalVerticalMargin_17
        return view
    }()
    private let img_arrow_ViewPromotions:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "arrowHorizontal")
        
        image.contentMode = .scaleAspectFill
        
        return image
    }()
   
    //MARK:Setup UI Elements
    //MARK:Setup Food Body
    private func setup_viewBodyMenuBar(){
        contentView.addSubview(viewBodyMenuBar )
        
        viewBodyMenuBar.snp.makeConstraints({(make) in
       make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_30)
            make.left.bottom.right.equalToSuperview()
            
        })
    }
    //side bar
    private func setup_img_SidebarOrange(){
        viewBodyMenuBar.addSubview( img_SidebarOrange )
        let foodTapGesture2 = UITapGestureRecognizer(target: self, action: #selector(tapBeveragesView))
    
        img_SidebarOrange.addGestureRecognizer(foodTapGesture2)
        img_SidebarOrange.isUserInteractionEnabled = true
        img_SidebarOrange.snp.makeConstraints({(make) in
            make.left.bottom.equalToSuperview()
            make.top.equalToSuperview()
            make.width.equalTo(Demension.shared.largeHorizontalMargin_97)
        })
    }
    //food view
    private func setup_ViewFood_LargeView (){
        viewBodyMenuBar.addSubview( ViewFood_LargeView )
        
        ViewFood_LargeView.snp.makeConstraints({(make) in
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_30)
            make.width.equalTo(Demension.shared.largeHorizontalMargin_333)
            make.height.equalTo(Demension.shared.largeHorizontalMargin_87)
            make.centerX.equalToSuperview()
        })
    }
     func setup_ViewFood_BodyMenuBarItem(){
        
        ViewFood_LargeView.addSubview(  ViewFood_BodyMenuBarItem )
        ViewFood_BodyMenuBarItem.snp.makeConstraints({(make) in
            make.top.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(Demension.shared.largeHorizontalMargin_38)
            make.width.equalTo(Demension.shared.largeHorizontalMargin_280)
        })
    }
    
    private func setup_img_ViewFood_BodyMenuBar(){
        ViewFood_LargeView.addSubview(img_ViewFood_BodyMenuBar )
        
        img_ViewFood_BodyMenuBar.snp.makeConstraints({(make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview().offset(Demension.shared.mediumVerticalMargin_9)
            
            make.width.equalTo(Demension.shared.largeHorizontalMargin_69)
            make.height.equalTo(Demension.shared.largeVerticalMargin_69)
            
        })
    }
    private func setup_lbl_FoodTitle(){
        ViewFood_BodyMenuBarItem.addSubview(lbl_FoodTitle )
        
        lbl_FoodTitle.snp.makeConstraints({(make) in
            make.left.equalToSuperview().offset(56)
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_28)
        })
    }
    private func setup_lbl_CountItem(){
        ViewFood_BodyMenuBarItem.addSubview(lbl_CountItemFood )
      lbl_CountItemFood.snp.makeConstraints({(make) in
            make.left.equalToSuperview().offset(56)
            make.top.equalTo(lbl_FoodTitle.snp.bottom).offset(Demension.shared.smallVerticalMargin_7)
        })
    }
    private func setup_ViewFood_forArrow(){
        ViewFood_LargeView.addSubview(ViewFood_forArrow )
        
        ViewFood_forArrow.snp.makeConstraints({(make) in
            make.width.equalTo(Demension.shared.largeVerticalMargin_33)
            make.height.equalTo(Demension.shared.largeHorizontalMargin_33)
            make.right.equalTo(ViewFood_LargeView).offset(0)
            make.centerY.equalToSuperview()
        })
    }
    private func setup_img_arrowHorizontalMenuBar(){
        ViewFood_forArrow.addSubview(img_arrowViewFood )
        
        img_arrowViewFood.snp.makeConstraints({(make) in
            make.center.equalToSuperview()
        })
    }
    
    
    //MARK: Setup Beverages Body
    private func setup_ViewBeverages_LargeView(){
        viewBodyMenuBar.addSubview( ViewBeverages_LargeView )
     
        
        ViewBeverages_LargeView.snp.makeConstraints({(make) in
            make.width.height.left.equalTo(ViewFood_LargeView)
            make.top.equalTo(ViewFood_LargeView.snp.bottom).offset(Demension.shared.largeVerticalMargin)
        })
    }
     func setup_ViewBeverages_BodyMenuBarItem(){
        let foodTapGesture = UITapGestureRecognizer(target: self, action: #selector(tapBeveragesView))
    
        ViewBeverages_BodyMenuBarItem.addGestureRecognizer(foodTapGesture)
        ViewBeverages_BodyMenuBarItem.isUserInteractionEnabled = true
        ViewBeverages_LargeView.addSubview(  ViewBeverages_BodyMenuBarItem )
      ViewBeverages_BodyMenuBarItem.snp.makeConstraints({(make) in
            make.top.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(Demension.shared.largeHorizontalMargin_38)
            make.width.equalTo(Demension.shared.largeHorizontalMargin_280)
        })
    }
    private func setup_img_ViewBeverages_BodyMenuBar(){
        ViewBeverages_LargeView.addSubview(img_ViewBeverages_BodyMenuBar )
        
        img_ViewBeverages_BodyMenuBar.snp.makeConstraints({(make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview().offset(Demension.shared.mediumVerticalMargin_9)
            
            make.width.equalTo(Demension.shared.largeHorizontalMargin_69)
            make.height.equalTo(Demension.shared.largeVerticalMargin_69)
            
        })
    }
    private func setup_lbl_TiTle_ViewBeverages(){
       
        ViewBeverages_BodyMenuBarItem.addSubview(lbl_TiTle_ViewBeverages )
        
        lbl_TiTle_ViewBeverages.snp.makeConstraints({(make) in
            make.left.equalToSuperview().offset(56)
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_28)
        })
    }
    private func setup_lbl_CountItem_ViewBeverages(){
        ViewBeverages_BodyMenuBarItem.addSubview(lbl_CountItem_ViewBeverages )
        
        lbl_CountItem_ViewBeverages.snp.makeConstraints({(make) in
            make.left.equalToSuperview().offset(56)
            make.top.equalTo(lbl_TiTle_ViewBeverages.snp.bottom).offset(Demension.shared.smallVerticalMargin_7)
        })
    }
    private func setup_ViewBeverages_forArrow(){
        ViewBeverages_LargeView.addSubview(ViewBeverages_forArrow )
        
        ViewBeverages_forArrow.snp.makeConstraints({(make) in
            make.width.equalTo(Demension.shared.largeVerticalMargin_33)
            make.height.equalTo(Demension.shared.largeHorizontalMargin_33)
            make.right.equalTo(ViewBeverages_LargeView).offset(0)
            make.centerY.equalToSuperview()
        })
    }
    private func setup_img_arrow_ViewBeverages(){
        ViewBeverages_forArrow.addSubview(img_arrow_ViewBeverages )
        
        img_arrow_ViewBeverages.snp.makeConstraints({(make) in
            make.center.equalToSuperview()
        })
    }

   
    //MARK: Setup Desserts Body
    private func setup_ViewDesserts_LargeView(){
        viewBodyMenuBar.addSubview( ViewDessert_LargeView )
       ViewDessert_LargeView.snp.makeConstraints({(make) in
            make.width.height.left.equalTo(ViewBeverages_LargeView)
            make.top.equalTo(ViewBeverages_LargeView.snp.bottom).offset(Demension.shared.largeVerticalMargin)
        })
    }
    private func setup_ViewDesserts_BodyMenuBarItem(){
      
        ViewDessert_LargeView.addSubview(  ViewDessert_BodyMenuBarItem )
        ViewDessert_BodyMenuBarItem.snp.makeConstraints({(make) in
            make.top.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(Demension.shared.largeHorizontalMargin_38)
            make.width.equalTo(Demension.shared.largeHorizontalMargin_280)
        })
    }
    
    private func setup_img_ViewDesserts_BodyMenuBar(){
        ViewDessert_LargeView.addSubview(img_ViewDesserts_BodyMenuBar )

        img_ViewDesserts_BodyMenuBar.snp.makeConstraints({(make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview().offset(Demension.shared.mediumVerticalMargin_9)

            make.width.equalTo(Demension.shared.largeHorizontalMargin_69)
            make.height.equalTo(Demension.shared.largeVerticalMargin_69)

        })
    }
    private func setup_lbl_TiTle_ViewDesserts(){
        ViewDessert_BodyMenuBarItem.addSubview(lbl_TiTle_ViewDesserts )

        lbl_TiTle_ViewDesserts.snp.makeConstraints({(make) in
            make.left.equalToSuperview().offset(56)
            make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_28)
        })
    }
    private func setup_lbl_CountItem_ViewDesserts(){
        ViewDessert_BodyMenuBarItem.addSubview(lbl_CountItem_ViewDesserts )

        lbl_CountItem_ViewDesserts.snp.makeConstraints({(make) in
            make.left.equalToSuperview().offset(56)
            make.top.equalTo(lbl_TiTle_ViewDesserts.snp.bottom).offset(Demension.shared.smallVerticalMargin_7)
        })
    }
    private func setup_ViewDesserts_forArrow(){
        ViewDessert_LargeView.addSubview(ViewDesserts_forArrow )

        ViewDesserts_forArrow.snp.makeConstraints({(make) in
            make.width.equalTo(Demension.shared.largeVerticalMargin_33)
            make.height.equalTo(Demension.shared.largeHorizontalMargin_33)
            make.right.equalTo(ViewDessert_LargeView).offset(0)
            make.centerY.equalToSuperview()
        })
    }
    private func setup_img_arrow_ViewDesserts(){
        ViewDesserts_forArrow.addSubview(img_arrow_ViewDesserts )

        img_arrow_ViewDesserts.snp.makeConstraints({(make) in
            make.center.equalToSuperview()
        })
    }
    
    
     //MARK: Setup Promotion Body
     private func setup_ViewPromotions_LargeView(){
         viewBodyMenuBar.addSubview( ViewPromotions_LargeView )
        ViewPromotions_LargeView.snp.makeConstraints({(make) in
             make.width.height.left.equalTo(ViewBeverages_LargeView)
             make.top.equalTo(ViewDessert_LargeView.snp.bottom).offset(Demension.shared.largeVerticalMargin)
         })
     }
     private func setup_ViewPromotions_BodyMenuBarItem(){
 //        let foodTapGesture = UITapGestureRecognizer(target: self, action: #selector(tappFood_BobyMenuBar))
 //
 //        ViewFood_BodyMenuBarItem.addGestureRecognizer(foodTapGesture)
        ViewPromotions_LargeView.addSubview(  ViewPromotions_BodyMenuBarItem )
        ViewPromotions_BodyMenuBarItem.snp.makeConstraints({(make) in
             make.top.bottom.equalToSuperview()
             make.left.equalToSuperview().offset(Demension.shared.largeHorizontalMargin_38)
             make.width.equalTo(Demension.shared.largeHorizontalMargin_280)
         })
     }
     
     private func setup_img_ViewPromotion_BodyMenuBar(){
         ViewPromotions_LargeView.addSubview(img_ViewPromotions_BodyMenuBar )

        img_ViewPromotions_BodyMenuBar.snp.makeConstraints({(make) in
             make.left.equalToSuperview()
             make.top.equalToSuperview().offset(Demension.shared.mediumVerticalMargin_9)

             make.width.equalTo(Demension.shared.largeHorizontalMargin_69)
             make.height.equalTo(Demension.shared.largeVerticalMargin_69)

         })
     }
     private func setup_lbl_TiTle_ViewPromotions(){
         ViewPromotions_BodyMenuBarItem.addSubview(lbl_TiTle_ViewPromotions )

        lbl_TiTle_ViewPromotions.snp.makeConstraints({(make) in
             make.left.equalToSuperview().offset(56)
             make.top.equalToSuperview().offset(Demension.shared.largeVerticalMargin_28)
         })
     }
    private func setup_lbl_CountItem_ViewPromotions(){
        ViewPromotions_BodyMenuBarItem.addSubview(lbl_CountItem_ViewPromotions )

        lbl_CountItem_ViewPromotions.snp.makeConstraints({(make) in
            make.left.equalToSuperview().offset(56)
            make.top.equalTo(lbl_TiTle_ViewPromotions.snp.bottom).offset(Demension.shared.smallVerticalMargin_7)
        })
    }
    
 
    private func setup_ViewPromotions_forArrow(){
        ViewPromotions_LargeView.addSubview(ViewPromotions_forArrow )

        ViewPromotions_forArrow.snp.makeConstraints({(make) in
            make.width.equalTo(Demension.shared.largeVerticalMargin_33)
            make.height.equalTo(Demension.shared.largeHorizontalMargin_33)
            make.right.equalTo(ViewPromotions_LargeView).offset(0)
            make.centerY.equalToSuperview()
        })
    }
    
    private func setup_img_arrow_ViewPromotions(){
        ViewPromotions_forArrow.addSubview(img_arrow_ViewPromotions )

        img_arrow_ViewPromotions.snp.makeConstraints({(make) in
            make.center.equalToSuperview()
        })
    }

}
