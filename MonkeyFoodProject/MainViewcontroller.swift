//
//  ViewController.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 06/04/2021.
//

import UIKit



class MainViewcontroller: UIViewController{
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }
    @IBAction func touch(_ sender: Any) {
        print("touch")
    
        self.view.makeToast("đã lấy token thành công", duration: 1.5, position: .bottom)
       
    
     
    }
    
}



