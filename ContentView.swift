//
//  ContentView.swift
//  Challenge2SwiftUI
//
//  Created by Marko Zivanovic on 29.8.23..
//

import SwiftUI

struct ContentView: View {
    
    @State private var possibleMoves = ["Rock", "Paper", "Scissors"]
    
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Spacer ()
                
                Text("Rock - Paper - Scissors")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(Color(.darkGray))
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
