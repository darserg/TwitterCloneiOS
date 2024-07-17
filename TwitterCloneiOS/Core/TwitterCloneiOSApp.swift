//
//  TwitterCloneiOSApp.swift
//  TwitterCloneiOS
//
//  Created by Сергей Дарьин on 10.07.2024.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneiOSApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView  {
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
