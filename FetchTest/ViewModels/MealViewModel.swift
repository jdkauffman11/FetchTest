//
//  MealViewModel.swift
//  FetchTest
//
//  Created by Jordan Kauffman on 8/16/24.
//

import Foundation

class MealViewModel: ObservableObject {
    @Published var meals: [Meal] = []
    
    @MainActor
    func fetchMeals(for category: MealCategory) async {
        guard let url = NetworkingConstants.getUrlComponents(for: category).url else { return }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decoder = JSONDecoder()
            
            meals = try decoder.decode(MealResponse.self, from: data).meals.sorted(by: { $0.name?.lowercased() ?? "" < $1.name?.lowercased() ?? ""})
        } catch {
            print("Failed to fetch and decode meals")
        }
    }
}
