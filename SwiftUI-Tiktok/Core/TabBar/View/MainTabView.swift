//
//  MainTabView.swift
//  SwiftUI-Tiktok
//
//  Created by Umut Yenidil on 23.09.2024.
//

import SwiftUI

struct MainTabView: View {
    @StateObject private var viewModel = MainTabViewModel()
    
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            FeedView()
                .tabItem {
                    VStack {
                        Image(systemName: viewModel.selectedTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, viewModel.selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                .onAppear { viewModel.selectedTab = 0 }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.2")
                            .environment(\.symbolVariants, viewModel.selectedTab == 1 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear { viewModel.selectedTab = 1 }
                .tag(1)
            
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "plus")
                }
                .onAppear { viewModel.selectedTab = 2 }
                .tag(2)
            
            NotificationsView()
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                            .environment(\.symbolVariants, viewModel.selectedTab == 3 ? .fill : .none)
                        Text("Inbox")
                    }
                }
                .onAppear { viewModel.selectedTab = 3 }
                .tag(3)
            
            CurrentUserProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                            .environment(\.symbolVariants, viewModel.selectedTab == 4 ? .fill : .none)
                        Text("Profile")
                    }
                }
                .onAppear { viewModel.selectedTab = 4 }
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
