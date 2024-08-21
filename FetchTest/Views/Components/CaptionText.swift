//
//  CaptionText.swift
//  FetchTest
//
//  Created by Jordan Kauffman on 8/19/24.
//

import SwiftUI

struct CaptionText: View {
    let string: String
    var body: some View {
        Text(string)
            .font(.caption)
    }
}

#Preview {
    CaptionText(string: "Text goes here")
}
