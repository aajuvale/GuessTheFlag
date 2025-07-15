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
            HStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.red)
                Rectangle()
                    .frame(width: 50, height: 50)
                Rectangle()
                    .frame(width: 50, height: 50)
                Rectangle()
                    .frame(width: 50, height: 50)
                Rectangle()
                    .frame(width: 50, height: 50)
            }
            HStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.red)
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.red)
                Rectangle()
                    .frame(width: 50, height: 50)
                    .shadow(radius: 1.5)
                    .foregroundStyle(Color.white)
                        .opacity(0.6)
                Rectangle()
                    .frame(width: 50, height: 50)
                    .shadow(radius: 1.5)
                    .foregroundStyle(Color.white)
                        .opacity(0.6)
                Rectangle()
                    .frame(width: 50, height: 50)
                    .shadow(radius: 1.5)
                    .foregroundStyle(Color.white)
                        .opacity(0.6)
            }
            HStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.red)
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.green)
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.green)
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.green)
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(Color.green)
            }
        }
    }
}

#Preview {
    ContentView()
}
