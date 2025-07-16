//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ahmed Juvale on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                VStack(spacing: 0) {
                    Color.red
                    Color.blue
                }
                
                Text("Hello world!")
                    .foregroundStyle(.secondary)
                    .padding(50)
                    .background(.ultraThinMaterial)
            }
            .background(.red)
            .ignoresSafeArea() // goes past the safe area
        }
    }
}

#Preview {
    ContentView()
}
