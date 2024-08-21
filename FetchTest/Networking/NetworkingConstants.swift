//
//  NetworkingConstants.swift
//  FetchTest
//
//  Created by Jordan Kauffman on 8/16/24.
//

import Foundation

struct NetworkingConstants {
    static let baseURL = "themealdb.com"
    
    static func getUrlComponents(for category: MealCategory) -> URLComponents {
        var urlComponents        = URLComponents()
        urlComponents.scheme     = "https"
        urlComponents.host       = baseURL
        urlComponents.path       = Endpoints.filter
        urlComponents.queryItems = [
            QueryParamaters.formQueryParam(from: category)
        ]
        return urlComponents
    }
    
    static func getUrlComponents(for id: String) -> URLComponents {
        var urlComponents        = URLComponents()
        urlComponents.scheme     = "https"
        urlComponents.host       = baseURL
        urlComponents.path       = Endpoints.lookup
        urlComponents.queryItems = [
            QueryParamaters.formQueryParam(for: id)
        ]
        return urlComponents
    }
    
    struct Endpoints {
        static let filter = "/api/json/v1/1/filter.php"
        static let lookup = "/api/json/v1/1/lookup.php"
    }
    
    struct QueryParamaters {
        static func formQueryParam(from category: MealCategory) -> URLQueryItem {
            return URLQueryItem(name: "c", value: category.rawValue)
        }
        
        static func formQueryParam(for id: String) -> URLQueryItem {
            return URLQueryItem(name: "i", value: id)
        }
    }
}
