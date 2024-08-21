//
//  MealView.swift
//  FetchTest
//
//  Created by Jordan Kauffman on 8/16/24.
//

import SwiftUI

struct MealView: View {
    @StateObject var viewModel = MealViewModel()
    
    let mealCategory: MealCategory = .dessert
    
    var body: some View {
        List($viewModel.meals, id: \.id) { meal in
            MealCellView(meal: meal.wrappedValue)
        }
        .background(.lavender)
        .listStyle(.plain)
        .navigationTitle(mealCategory.rawValue)
        .task {
            await viewModel.fetchMeals(for: mealCategory)
        }
    }
}

#Preview {
    MealView()
}
