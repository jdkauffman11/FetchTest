//
//  FetchTestApp.swift
//  FetchTest
//
//  Created by Jordan Kauffman on 8/16/24.
//

import SwiftUI

@main
struct FetchTestApp: App {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .lavender
        UINavigationBar.appearance().standardAppearance = appearance
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MealView()
            }
            .tint(.primary)
        }
    }
}
