//
//  ViewReusble.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 11/04/2021.
//

import UIKit
class ViewReusble:UIView {
    public let vieW:UIView = {
        let view = UIView()
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 50
        return view
    }()
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupShadow()
    }
    override func layoutSubviews() {
        setupShadow()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   public func setupShadow(){
    vieW.snp.makeConstraints({(make) in
        
    })
    }
}
