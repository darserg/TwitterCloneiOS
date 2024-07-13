//
//  SideMenuView.swift
//  TwitterCloneiOS
//
//  Created by Сергей Дарьин on 11.07.2024.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack (alignment: .leading, spacing: 4) {
                    Text("Darin Sergey")
                        .font(.headline)
                    
                    Text("@fullstackoverflowdev")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                UserStatsView().padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                if viewModel == .profile {
                    NavigationLink(destination: {
                        ProfileView()
                    }) {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                } else if viewModel == .logout {
                    Button {
                        print("Handle logout here...")
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }

                } else {
                    SideMenuOptionRowView(viewModel: viewModel)
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    SideMenuView()
}
