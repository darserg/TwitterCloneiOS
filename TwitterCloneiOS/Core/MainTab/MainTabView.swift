//
//  MainTabView.swift
//  TwitterCloneiOS
//
//  Created by Сергей Дарьин on 10.07.2024.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectionIndex = 0
    var body: some View {
        TabView(selection: $selectionIndex) {
            FeedView()
                .onTapGesture {
                    self.selectionIndex = 0
                }.tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
            ExploreView()
                .onTapGesture {
                    self.selectionIndex = 1
                }.tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            NotificationsView()
                .onTapGesture {
                    self.selectionIndex = 2
                }.tabItem {
                    Image(systemName: "bell")
                }.tag(2)
            
            MessagesView()
                .onTapGesture {
                    self.selectionIndex = 3
                }.tabItem {
                    Image(systemName: "envelope")
                }.tag(3)
        }
    }
}

#Preview {
    MainTabView()
}
