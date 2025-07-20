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
            Button("Button 1") {}
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) {}
                .buttonStyle(.bordered)
            Button("Button 3") {}
                .buttonStyle(.borderedProminent)
                .tint(.mint )
            Button("Button 4", role: .destructive) {}
                .buttonStyle(.borderedProminent)
        }
    }
    
    func executeDelete() {
        print("Now deleting")
    }
}

#Preview {
    ContentView()
}
