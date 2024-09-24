//
//  UserStatView.swift
//  SwiftUI-Tiktok
//
//  Created by Umut Yenidil on 24.09.2024.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let label: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text(label)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}


#Preview {
    UserStatView(value: 4, label: "test")
}
