//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Ahmed Juvale on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var showingScore = false
    @State
    private var scoreTitle = ""
    
    @State
    private var countries = ["Estonia", "France", "Germany", "Ireland",
                     "Italy",  "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
        .shuffled()
    
    @State
    var correctAnser = Int.random(in: 0...2)
    
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of ")
                        .foregroundColor(.white)
                        .font(.subheadline.weight(.heavy))
                    Text(countries[correctAnser])
                        .foregroundColor(.white)
                        .font(.largeTitle.weight(.semibold))
                }
                
                ForEach(0..<3) {number in
                    Button {
                        // Button was tapped
                        flagTapped(number)
                    } label: {
                        Image(countries[number].lowercased())
                            .renderingMode(.original)
                            .clipShape(.capsule)
                            .shadow(radius: 5)
                    }
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is ???")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnser {
            scoreTitle = "Correct"
        }
        else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnser = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}
