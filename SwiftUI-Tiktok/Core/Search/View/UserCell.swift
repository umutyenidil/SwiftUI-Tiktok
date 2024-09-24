//
//  UserCell.swift
//  SwiftUI-Tiktok
//
//  Created by Umut Yenidil on 23.09.2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray4))
            
            VStack(alignment: .leading) {
                Text("Test User")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Test Name")
                    .font(.footnote)
            }
            
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}
