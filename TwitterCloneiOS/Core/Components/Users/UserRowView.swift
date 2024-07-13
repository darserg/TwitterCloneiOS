//
//  UserRowView.swift
//  TwitterCloneiOS
//
//  Created by Сергей Дарьин on 11.07.2024.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack (alignment: .leading, spacing: 4) {
                Text("fullstackoverflowdev")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text("Darin Sergey")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

#Preview {
    UserRowView()
}
