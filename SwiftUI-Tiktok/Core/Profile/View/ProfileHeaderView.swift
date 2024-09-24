//
//  ProfileHeaderView.swift
//  SwiftUI-Tiktok
//
//  Created by Umut Yenidil on 23.09.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray4))
                
                Text("@umutyendiil")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            HStack(spacing: 16) {
                UserStatView(value: 40, label: "Following")
                
                UserStatView(value: 400, label: "Follower")
                
                UserStatView(value: 5320, label: "Likes")
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}

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
