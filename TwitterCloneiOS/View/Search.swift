//
//  Search.swift
//  TwitterCloneiOS
//
//  Created by Сергей Дарьин on 10.07.2024.
//

import SwiftUI

struct Search: View {
    @State private var Search = ""
    
    var body: some View {
        TextField(text: $Search, label: {
            Text("Write your text here")
            Spacer()
        })
    }
}

#Preview {
    Search()
}
