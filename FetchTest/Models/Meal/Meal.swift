//
//  Meal.swift
//  FetchTest
//
//  Created by Jordan Kauffman on 8/16/24.
//

import Foundation

struct Meal: Codable {
    var name:   String?
    var image:  String?
    var id:     String?
    
    enum CodingKeys: String, CodingKey {
        case name  = "strMeal"
        case image = "strMealThumb"
        case id    = "idMeal"
    }
}
