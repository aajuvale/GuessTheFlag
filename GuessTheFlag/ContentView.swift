//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ahmed Juvale on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    
    var countries = ["Estonia", "France", "Germany", "Ireland",
                     "Italy",  "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnser = Int.random(in: 0...2)
    
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.5)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of ")
                        .foregroundColor(.white)
                    Text(countries[correctAnser])
                        .foregroundColor(.white)
                }
                
                ForEach(0..<3) {number in
                    Button {
                        // Button was tapped
                    } label: {
                        Image(countries[number].lowercased())
                            .renderingMode(.original)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
