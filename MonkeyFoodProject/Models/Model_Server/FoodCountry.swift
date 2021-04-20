

import Foundation
struct FoodCountryPostRoute:Decodable {
    var kq : Int
    var FoodList:[FoodCountry]
}
struct FoodCountry:Decodable {
    var _id : String
    var Country: String
    var `Type` : String
    var Image : String
    init(id: String,country: String,type: String,image: String) {
        self._id = id
        self.Country = country
        self.Type = type
        self.Image =  image
    }
}

