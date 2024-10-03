//
//  ContentView.swift
//  Memorize
//
//  Created by Andrey Babak on 03/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundStyle(.gray)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(.white)
                
                RoundedRectangle(cornerRadius: 15)
                    .strokeBorder(lineWidth: 2)
                
                Text("📚")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 15)
            }
        }
    }
}

#Preview {
    ContentView()
}
