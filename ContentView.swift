//
//  ContentView.swift
//  Challenge2SwiftUI
//
//  Created by Marko Zivanovic on 29.8.23..
//

import SwiftUI

struct ContentView: View {
    
    @State private var possibleMoves = ["Rock 👊🏼", "Paper 🤚🏼", "Scissors ✌🏼"]
       @State private var shouldWin = Bool.random()
       @State private var playerScore = 0
       @State private var round = 1
       
       @State private var appChoice = Int.random(in: 0..<3) // Use @State for appChoice
       
    
    
    var body: some View {
        ZStack {
                    LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
                    VStack {
                        Text("Rock - Paper - Scissors")
                            .font(.largeTitle.weight(.bold))
                            .foregroundColor(Color(.black))
                            .padding(.top, 20)
                        
                        Text("Round \(round)")
                            .font(.title.bold())
                            .padding(.top, 10)
                        
                        Text("Your score is \(playerScore)")
                            .font(.title.bold())
                            .padding(.top, 10)
                        
                        Text("You should \(shouldWin ? "Win" : "Lose")!")
                            .font(.title)
                            .padding(.top, 20)
                        HStack {
                                          ForEach(0..<3) { move in
                                              Button(action: {
                                                  self.checkMove(move)
                                              }) {
                                                  Text(possibleMoves[move])
                                                      .font(.largeTitle)
                                                      .padding()
                                                      .background(Color.blue)
                                                      .foregroundColor(.white)
                                                      .cornerRadius(10)
                                              }
                                          }
                                      }
                                  }
                              }
                          }
    
    func checkMove(_ move: Int) {
            let appMove = shouldWin ? (appChoice + 1) % 3 : (appChoice + 2) % 3
            
            if move == appMove {
                playerScore += 1
            } else {
                playerScore -= 1
            }
            
            round += 1
            if round > 10 {
                // Game ends after 10 rounds
                // You can show a result screen or handle game-over logic here
            } else {
                appChoice = Int.random(in: 0..<3)
                shouldWin.toggle()
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
