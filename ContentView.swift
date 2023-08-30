//
//  ContentView.swift
//  Challenge2SwiftUI
//
//  Created by Marko Zivanovic on 29.8.23..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Spacer ()
                
                Text("Rock - Paper - Scissors")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
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
