//
//  Food.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 21/04/2021.
//

import Foundation
struct FoodPostRoute:Decodable {
    var kq : Int
    var FoodList:[FoodMenu]
}
struct FoodMenu:Decodable {
    var _id : String
    var FoodName : String
    var `Type` : String
    var Image  :String
    var Discription : String
}
