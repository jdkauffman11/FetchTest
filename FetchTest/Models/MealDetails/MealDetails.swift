//
//  MealDetails.swift
//  FetchTest
//
//  Created by Jordan Kauffman on 8/17/24.
//

import Foundation

struct MealDetails: Codable {
    var id                          : String?
    var name                        : String?
    var pairing                     : String?
    var category                    : String?
    var origin                      : String?
    var instructions                : String?
    var image                       : String?
    var tags                        : String?
    var youtubeLink                 : String?
    var strIngredient1              : String?
    var strIngredient2              : String?
    var strIngredient3              : String?
    var strIngredient4              : String?
    var strIngredient5              : String?
    var strIngredient6              : String?
    var strIngredient7              : String?
    var strIngredient8              : String?
    var strIngredient9              : String?
    var strIngredient10             : String?
    var strIngredient11             : String?
    var strIngredient12             : String?
    var strIngredient13             : String?
    var strIngredient14             : String?
    var strIngredient15             : String?
    var strIngredient16             : String?
    var strIngredient17             : String?
    var strIngredient18             : String?
    var strIngredient19             : String?
    var strIngredient20             : String?
    var strMeasure1                 : String?
    var strMeasure2                 : String?
    var strMeasure3                 : String?
    var strMeasure4                 : String?
    var strMeasure5                 : String?
    var strMeasure6                 : String?
    var strMeasure7                 : String?
    var strMeasure8                 : String?
    var strMeasure9                 : String?
    var strMeasure10                : String?
    var strMeasure11                : String?
    var strMeasure12                : String?
    var strMeasure13                : String?
    var strMeasure14                : String?
    var strMeasure15                : String?
    var strMeasure16                : String?
    var strMeasure17                : String?
    var strMeasure18                : String?
    var strMeasure19                : String?
    var strMeasure20                : String?
    var source                      : String?
    var imageSource                 : String?
    var strCreativeCommonsConfirmed : String?
    var dateModified                : String?
    
    enum CodingKeys: String, CodingKey {
        
        case id                          = "idMeal"
        case name                        = "strMeal"
        case pairing                     = "strDrinkAlternate"
        case category                    = "strCategory"
        case origin                      = "strArea"
        case instructions                = "strInstructions"
        case image                       = "strMealThumb"
        case tags                        = "strTags"
        case youtubeLink                 = "strYoutube"
        case strIngredient1              = "strIngredient1"
        case strIngredient2              = "strIngredient2"
        case strIngredient3              = "strIngredient3"
        case strIngredient4              = "strIngredient4"
        case strIngredient5              = "strIngredient5"
        case strIngredient6              = "strIngredient6"
        case strIngredient7              = "strIngredient7"
        case strIngredient8              = "strIngredient8"
        case strIngredient9              = "strIngredient9"
        case strIngredient10             = "strIngredient10"
        case strIngredient11             = "strIngredient11"
        case strIngredient12             = "strIngredient12"
        case strIngredient13             = "strIngredient13"
        case strIngredient14             = "strIngredient14"
        case strIngredient15             = "strIngredient15"
        case strIngredient16             = "strIngredient16"
        case strIngredient17             = "strIngredient17"
        case strIngredient18             = "strIngredient18"
        case strIngredient19             = "strIngredient19"
        case strIngredient20             = "strIngredient20"
        case strMeasure1                 = "strMeasure1"
        case strMeasure2                 = "strMeasure2"
        case strMeasure3                 = "strMeasure3"
        case strMeasure4                 = "strMeasure4"
        case strMeasure5                 = "strMeasure5"
        case strMeasure6                 = "strMeasure6"
        case strMeasure7                 = "strMeasure7"
        case strMeasure8                 = "strMeasure8"
        case strMeasure9                 = "strMeasure9"
        case strMeasure10                = "strMeasure10"
        case strMeasure11                = "strMeasure11"
        case strMeasure12                = "strMeasure12"
        case strMeasure13                = "strMeasure13"
        case strMeasure14                = "strMeasure14"
        case strMeasure15                = "strMeasure15"
        case strMeasure16                = "strMeasure16"
        case strMeasure17                = "strMeasure17"
        case strMeasure18                = "strMeasure18"
        case strMeasure19                = "strMeasure19"
        case strMeasure20                = "strMeasure20"
        case source                      = "strSource"
        case imageSource                 = "strImageSource"
        case strCreativeCommonsConfirmed = "strCreativeCommonsConfirmed"
        case dateModified                = "dateModified"
        
    }
    
    var steps: [MealDetailSteps] {
        // Have these api devs heard of an array?
        var order = [MealDetailSteps]()
        if let i = strIngredient1, let m = strMeasure1, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 1, ingredient: i, measurement: m))
        }
        if let i = strIngredient2, let m = strMeasure2, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 2, ingredient: i, measurement: m))
        }
        if let i = strIngredient3, let m = strMeasure3, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 3, ingredient: i, measurement: m))
        }
        if let i = strIngredient4, let m = strMeasure4, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 4, ingredient: i, measurement: m))
        }
        if let i = strIngredient5, let m = strMeasure5, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 5, ingredient: i, measurement: m))
        }
        if let i = strIngredient6, let m = strMeasure6, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 6, ingredient: i, measurement: m))
        }
        if let i = strIngredient7, let m = strMeasure7, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 7, ingredient: i, measurement: m))
        }
        if let i = strIngredient8, let m = strMeasure8, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 8, ingredient: i, measurement: m))
        }
        if let i = strIngredient9, let m = strMeasure9, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 9, ingredient: i, measurement: m))
        }
        if let i = strIngredient10, let m = strMeasure10, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 10, ingredient: i, measurement: m))
        }
        if let i = strIngredient11, let m = strMeasure11, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 11, ingredient: i, measurement: m))
        }
        if let i = strIngredient12, let m = strMeasure12, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 12, ingredient: i, measurement: m))
        }
        if let i = strIngredient13, let m = strMeasure13, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 13, ingredient: i, measurement: m))
        }
        if let i = strIngredient14, let m = strMeasure14, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 14, ingredient: i, measurement: m))
        }
        if let i = strIngredient15, let m = strMeasure15, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 15, ingredient: i, measurement: m))
        }
        if let i = strIngredient16, let m = strMeasure16, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 16, ingredient: i, measurement: m))
        }
        if let i = strIngredient17, let m = strMeasure17, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 17, ingredient: i, measurement: m))
        }
        if let i = strIngredient18, let m = strMeasure18, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 18, ingredient: i, measurement: m))
        }
        if let i = strIngredient19, let m = strMeasure19, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 19, ingredient: i, measurement: m))
        }
        if let i = strIngredient20, let m = strMeasure20, !(i.replacingOccurrences(of: " ", with: "").isEmpty) && !(m.replacingOccurrences(of: " ", with: "").isEmpty) {
            order.append(MealDetailSteps(order: 20, ingredient: i, measurement: m))
        }
        return order
    }
}

struct MealDetailSteps {
    let order: Int
    let ingredient: String
    let measurement: String
    let id = UUID()
}
