//
//  FeedView.swift
//  TwitterCloneiOS
//
//  Created by Сергей Дарьин on 10.07.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach (0 ... 20, id: \.self) { _ in
                    TweetView()
                        .padding()
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
