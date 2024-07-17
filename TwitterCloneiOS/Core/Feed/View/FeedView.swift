//
//  FeedView.swift
//  TwitterCloneiOS
//
//  Created by Сергей Дарьин on 10.07.2024.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach (0 ... 20, id: \.self) { _ in
                        TweetView()
                            .padding()
                    }
                }
            }
            Button {
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "plus")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
                    .fullScreenCover(isPresented: $showNewTweetView, content: {
                        NewTweetView()
                    })
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
        }
    }
}

#Preview {
    FeedView()
}
