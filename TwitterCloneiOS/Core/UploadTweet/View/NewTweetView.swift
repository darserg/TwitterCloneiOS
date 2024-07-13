//
//  NewTweetView.swift
//  TwitterCloneiOS
//
//  Created by Сергей Дарьин on 13.07.2024.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    print("Dismiss")}
                label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                Button {
                    print("Tweet")}
                label: {
                    Text("Tweet")
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .bold()
                }
            }
            .padding()
            
            HStack (alignment: .top) {
                Circle()
                    .frame(width: 64, height: 64)
                
                TextArea("What's happening? ",text: $caption)
            }
            .padding()
        }
    }
}

#Preview {
    NewTweetView()
}
