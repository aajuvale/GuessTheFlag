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
//            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
            
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green:  0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green:  0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of ")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnser])
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
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score ???")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
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
