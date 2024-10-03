//
//  ContentView.swift
//  Memorize
//
//  Created by Andrey Babak on 03/10/2024.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "🎃", "🕷️", "😈", "😈"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index], isFaceUp: false)
            }
        }
        .foregroundStyle(.gray)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 15)
            
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                
                Text(content)
                    .font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
