//
//  AsyncImageView.swift
//  FetchTest
//
//  Created by Jordan Kauffman on 8/19/24.
//

import SwiftUI

struct AsyncImageView: View {
    @State private var image: UIImage?
    @StateObject private var viewModel = AsyncImageViewModel()
    
    let imageURL: URL
    
    var body: some View {
        Group {
            if let image = image, viewModel.loadingState == .loaded {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
            } else if viewModel.loadingState == .loading {
                ProgressView()
            } else {
                ZStack {
                    Rectangle()
                        .foregroundStyle(Color(uiColor: .systemGray3))
                    Image(systemName: "exclamationmark.circle")
                        .resizable()
                        .foregroundStyle(Color.red)
                        .frame(width: 30, height: 30)
                }
            }
        }
        .task {
            await loadImage(imgURL: imageURL)
        }
    }
    
    func loadImage(imgURL: URL) async {
        let data = await viewModel.fetchImage(url: imgURL)
        if let data = data {
            image = UIImage(data: data)
        }
    }
}
