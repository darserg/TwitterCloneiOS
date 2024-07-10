//
//  ContentView.swift
//  TwitterCloneiOS
//
//  Created by Сергей Дарьин on 10.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem { Image(systemName: "house.fill") }
            Search()
                .tabItem { Image(systemName: "magnifyingglass") }
            Notifications()
                .tabItem { Image(systemName: "bell.fill") }
            Profile()
                .tabItem { Image(systemName: "person.fill") }
        }
    }
}

#Preview {
    ContentView()
}
