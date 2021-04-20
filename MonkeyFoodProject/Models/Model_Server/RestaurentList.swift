//
//  RestaurentList.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 20/04/2021.
//

import Foundation

struct RestaurentPostRoute:Decodable {
    var kq : Int
    var RestaurentList:[Restaurents]
}
struct Restaurents:Decodable {
    var _id : String
    var Name: String
    var Country : String
    var Category : String
    var Image : String
    
    init(id: String,foodName: String,country: String,category: String,image: String) {
        self._id = id
        self.Name = foodName
        self.Country = country
        self.Category =  category
        self.Image =  image
    }
}
