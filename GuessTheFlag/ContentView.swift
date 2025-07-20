//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ahmed Juvale on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            print("Edit button was tapped!")
        } label: {
            Label("Edit", systemImage: "pencil")
        }
    }
    
    func executeDelete() {
        print("Now deleting")
    }
}

#Preview {
    ContentView()
}
