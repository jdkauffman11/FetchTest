//
//  MealDetailsViewModel.swift
//  FetchTest
//
//  Created by Jordan Kauffman on 8/17/24.
//

import Foundation

class MealDetailsViewModel: ObservableObject {
    @Published var details: [MealDetails] = []
    @Published var loadingState: LoadingState = .loading
    
    @MainActor
    func fetchMealDetails(for id: String) async {
        guard let url = NetworkingConstants.getUrlComponents(for: id).url else { return }
        
        loadingState = .loading
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decoder = JSONDecoder()
            
            details = try decoder.decode(MealDetailsResponse.self, from: data).meals
            loadingState = .loaded
        } catch {
            print("Failed to fetch and decode meals")
            loadingState = .error
        }
    }
}

enum LoadingState {
    case loading
    case loaded
    case error
}
