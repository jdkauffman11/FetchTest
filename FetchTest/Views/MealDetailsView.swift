//
//  MealDetailsView.swift
//  FetchTest
//
//  Created by Jordan Kauffman on 8/19/24.
//

import SwiftUI

struct MealDetailsView: View {
    @StateObject var viewModel = MealDetailsViewModel()
    
    let name: String
    let id: String
    
    var body: some View {
        VStack {
            if viewModel.loadingState == .loading {
                ProgressView {
                    Text("Loading...")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .task {
                    await viewModel.fetchMealDetails(for: id)
                }
            } else if viewModel.loadingState == .loaded {
                GeometryReader { reader in
                ScrollView {
                    VStack(alignment: .leading, spacing: 8) {
                        if let urlString = viewModel.details.first?.image,
                           let url = URL(string: urlString) {
                            AsyncImageView(imageURL: url)
                                .frame(height: reader.size.width)
                        }
                        
                        VStack(alignment: .leading, spacing: 8) {
                            // MARK: Meal name
                            Text(name)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            
                            // MARK: Ingredients heading
                            Text("Ingredients")
                                .font(Font.system(size: 18, weight: .semibold))
                            
                            // MARK: Ingredient list
                            ForEach(viewModel.details.first?.steps ?? [], id: \.id) { value in
                                Text("\(value.ingredient): \(value.measurement)")
                            }
                            
                            // MARK: Instructions heading
                            Text("Instructions")
                                .font(Font.system(size: 18, weight: .semibold))
                                .padding(.top)
                            
                            // MARK: Instructions
                            if let instructions = viewModel.details.first?.instructions {
                                Text(instructions)
                            }
                            
                            // MARK: Source link
                            if let source = viewModel.details.first?.source,
                               let url = URL(string: source) {
                                LinkView(linkName: "Source", url: url)
                            }
                            
                            // MARK: Youtube link
                            if let youtube = viewModel.details.first?.youtubeLink,
                               let url = URL(string: youtube) {
                                LinkView(linkName: "Follow along on YouTube", url: url)
                            }
                            
                            // MARK: Date modified
                            if let dateModified = viewModel.details.first?.dateModified {
                                CaptionText(string: "Last modified \(dateModified)")
                            }
                            
                            // MARK: Area
                            if let area = viewModel.details.first?.origin {
                                CaptionText(string: "Area: \(area)")
                            }
                            
                            // MARK: Tags
                            if let tags = viewModel.details.first?.tags {
                                CaptionText(string: "Tags: \(tags)")
                            }
                            
                            // A few other properties of the meal were intentionally dismissed due to being generally null or seemingly not useful
                        }
                        .padding()
                    }
                }
                .navigationBarTitle(Text(""), displayMode: .inline)
                }
            } else {
                Text("There was an error loading data")
            }
        }
        .background(Color.lavender)
    }
}

#Preview {
    MealDetailsView(name: "Dessert", id: "53049")
}
