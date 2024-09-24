//
//  PostGridView.swift
//  SwiftUI-Tiktok
//
//  Created by Umut Yenidil on 23.09.2024.
//

import SwiftUI

struct PostGridView: View {
    private let items: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 1) {
            ForEach(0 ..< 20) { post in
                Rectangle()
                    .fill(Color(.systemGray5))
                    .aspectRatio(0.9, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    PostGridView()
}
