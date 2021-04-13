//
//  navigationBar.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 09/04/2021.
//

import UIKit
import RAMAnimatedTabBarController


class NavigationBarController:UITabBarController {
    override func viewDidLoad() {
        self.navigationController?.isNavigationBarHidden = true
        configure()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    func  configure(){
        let tabbar_Menu = MenuBarViewcontroller()
        let tabbar_Offers = OffersBarController()
        let tabbar_Home = HomeScreenViewcontroller()
        let tabbar_Profile = ProfileBar_ViewController()
        let tabbar_More = MorebarController()
       
      
        tabbar_Menu.tabBarItem =  RAMAnimatedTabBarItem(title: "Menu",
                                                image: UIImage(named: "tabbarMenu"),
                                                tag: 1)
        (tabbar_Menu.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMRotationAnimation()
        tabbar_Offers.tabBarItem =  RAMAnimatedTabBarItem(title: "Offers",
                                                image: UIImage(named: "tabbarOffers"),
                                                tag: 1)
        (tabbar_Offers.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMRotationAnimation()
        
        
        tabbar_Home.tabBarItem =  RAMAnimatedTabBarItem(title: "Home",
                                                image: UIImage(systemName: "house"),
                                                tag: 1)
        (tabbar_Home.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMRotationAnimation()
        
        
        tabbar_Profile.tabBarItem =  RAMAnimatedTabBarItem(title: "Profile",
                                                image: UIImage(named: "tabbarProfile"),
                                                tag: 1)
        (tabbar_Profile.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMRotationAnimation()
        
        tabbar_More.tabBarItem =  RAMAnimatedTabBarItem(title: "More",
                                                image: UIImage(named: "tabbarMore"),
                                                tag: 1)
        (tabbar_More.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMRightRotationAnimation()
        self.setViewControllers([tabbar_Menu,tabbar_Offers,tabbar_Home,tabbar_Profile,tabbar_More], animated: true)
       
       
        
    }
}
