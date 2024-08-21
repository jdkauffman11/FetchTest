//
//  MealCellView.swift
//  FetchTest
//
//  Created by Jordan Kauffman on 8/21/24.
//

import SwiftUI

struct MealCellView: View {
    let meal: Meal
    
    var body: some View {
        if let name = meal.name,
           let id = meal.id {
            NavigationLink(destination: MealDetailsView(name: name, id: id)) {
                HStack {
                    if let imgName = meal.image,
                       let imgURL = URL(string: imgName) {
                        AsyncImageView(imageURL: imgURL)
                            .id(imgURL)
                            .frame(width: 80, height: 80)
                    }
                    Text(name)
                        .font(.headline)
                        .padding(.horizontal, 8)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.trailing, 8)
            .listRowBackground(Color.lavender)
            .listRowSeparator(.hidden)
            .listRowInsets(
                .init(top: 8, 
                      leading: 16,
                      bottom: 8,
                      trailing: 16)
            )
            .background(
                Color(uiColor: .systemBackground)
                    .opacity(0.25)
            )
            .clipShape(
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, lineWidth: 0.75)
            )
        }
    }
}

#Preview {
    MealCellView(meal: Meal(name: "Pie"))
}
