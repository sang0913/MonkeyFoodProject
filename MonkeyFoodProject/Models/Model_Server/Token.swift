//
//  User.swift
//  MonkeyFoodProject
//
//  Created by sang1 on 21/04/2021.
//

import Foundation
struct TokenPostRoute:Decodable {
    var kq: Int
    var ListUser:[User]
}
struct User:Decodable {
     var IdUser : String
    var Username : String
    var Email : String
    var Mobile : String
    var Address: String
    var RegisterDate: String
    var Password: String
    var ConfirmPassword : String
    var Active : Bool
    var exp : Int
    var iat: Int
}
