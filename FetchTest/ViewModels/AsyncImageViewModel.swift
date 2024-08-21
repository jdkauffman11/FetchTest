//
//  AsyncImageViewModel.swift
//  FetchTest
//
//  Created by Jordan Kauffman on 8/21/24.
//

import Foundation

class AsyncImageViewModel: ObservableObject {
    @Published var loadingState: LoadingState = .loading
    
    @MainActor
    func fetchImage(url: URL) async -> Data? {
        loadingState = .loading
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            loadingState = .loaded
            return data
        } catch {
            print("Failed to fetch images")
        }
        loadingState = .error
        return nil
    }
}
