//
//  ContentView.swift
//  ElvisCostello
//
//  Created by Chaithra Nayak on 25/06/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message: String = ""
    @State private var showImage: String = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .foregroundStyle(.purple)
                .font(.largeTitle)
                .fontWeight(.black)
            Spacer()
            Image(systemName: showImage)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text(message)
                .foregroundStyle(.purple)
                .font(.largeTitle)
                .fontWeight(.black)
            Spacer()
            HStack {
                Button("Peace") {
                    showImage = "peacesign"
                    message = "Peace"
                }
                Button("Love") {
                    showImage = "heart"
                    message = "Love"
                }
                Button("Understanding") {
                    showImage = "lightbulb"
                    message = "Understanding"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
