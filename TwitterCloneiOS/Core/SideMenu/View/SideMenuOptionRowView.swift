//
//  SideMenuOptionRowView.swift
//  TwitterCloneiOS
//
//  Created by Сергей Дарьин on 11.07.2024.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    let viewModel : SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.title)
                .font(.subheadline)
            
            Spacer()
        }.frame(height: 40)
            .padding(.horizontal)
    }
}

#Preview {
    SideMenuOptionRowView(viewModel: .profile)
}
