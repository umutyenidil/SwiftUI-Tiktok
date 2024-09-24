//
//  NotificationCell.swift
//  SwiftUI-Tiktok
//
//  Created by Umut Yenidil on 23.09.2024.
//

import SwiftUI

struct NotificationCell: View {
    let notification: Int
    
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(Color(.systemGray4))
            
            HStack {
                Text("max.testerly")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text(" liked one of your posts.")
                    .font(.footnote) +
                
                Text(" \(notification)m")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Rectangle()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell(notification: 1)
}
