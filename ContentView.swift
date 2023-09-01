//
//  ContentView.swift
//  Challenge2SwiftUI
//
//  Created by Marko Zivanovic on 29.8.23..
//

import SwiftUI

struct ContentView: View {
    
    @State private var possibleMoves = ["Rock 👊🏼", "Paper 🤚🏼", "Scissors ✌🏼"]
    @State private var appChoice = Int.random(in: 0..<3)
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Text("Rock - Paper - Scissors")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(Color(.black))
                    .padding(.top)
                VStack {
                    VStack {
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
