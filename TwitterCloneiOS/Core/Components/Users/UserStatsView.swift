//
//  UserStatsView.swift
//  TwitterCloneiOS
//
//  Created by Сергей Дарьин on 11.07.2024.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack (spacing: 24) {
            HStack (spacing: 4) {
                Text("0").bold().font(.subheadline)
                
                Text("Following")
                    .foregroundColor(.gray)
            }

            HStack (spacing: 4) {
                Text("0").bold()
                
                Text("Followers")
                    .foregroundColor(.gray)
            }
        }
        .font(.caption)
    }
}

#Preview {
    UserStatsView()
}
