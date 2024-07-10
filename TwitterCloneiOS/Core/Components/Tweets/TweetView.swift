//
//  TweetView.swift
//  TwitterCloneiOS
//
//  Created by Сергей Дарьин on 10.07.2024.
//

import SwiftUI

struct TweetView: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            // Profile image + user info + tweet
            HStack(alignment: .top, spacing: 12) {
                Circle().frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                // user & tweet info
                VStack (alignment: .leading, spacing: 4){
                    HStack {
                        Text("Elon Musk")
                            .font(.subheadline).bold()
                        Text("@elonmusk")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("50kw")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    Text("America lost control since Biden become a president")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            // action buttons
            
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
            }.padding()
            
            Divider()
        }
    }
}

#Preview {
    TweetView()
}
