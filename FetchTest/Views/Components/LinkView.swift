//
//  LinkView.swift
//  FetchTest
//
//  Created by Jordan Kauffman on 8/19/24.
//

import SwiftUI

struct LinkView: View {
    let linkName: String
    let url: URL
    
    var body: some View {
        Link(destination: url) {
            Text(linkName)
                .font(Font.system(size: 14))
                .tint(.indigo)
        }
    }
}

#Preview {
    LinkView(linkName: "google.com", url: URL(string: "google.com")!)
}
