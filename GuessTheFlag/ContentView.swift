//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ahmed Juvale on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RadialGradient(gradient: Gradient(colors: [.blue, .black] ), center: .center, startRadius: 20, endRadius: 200)
    }
}

#Preview {
    ContentView()
}
