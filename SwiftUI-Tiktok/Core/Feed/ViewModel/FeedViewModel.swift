//
//  FeedViewModel.swift
//  SwiftUI-Tiktok
//
//  Created by Umut Yenidil on 24.09.2024.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [PostModel]()
    
    init() {
        
    }
    
    func fetchPosts() {
        self.posts = [
            .init(id: NSUUID().uuidString, videoUrl: "https://www.pexels.com/download/video/18209570/?fps=29.969999313354492&h=720&w=1366"),
            .init(id: NSUUID().uuidString, videoUrl: "https://www.pexels.com/download/video/27733109/?fps=30.0&h=720&w=1280"),
            .init(id: NSUUID().uuidString, videoUrl: "https://www.pexels.com/download/video/10058358/?fps=29.969999313354492&h=1280&w=720"),
            .init(id: NSUUID().uuidString, videoUrl: "https://www.pexels.com/download/video/13841192/?fps=59.940101623535156&h=1282&w=720"),
        ]
    }
}
