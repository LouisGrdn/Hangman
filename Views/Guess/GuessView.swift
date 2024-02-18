//
//  GuessView.swift
//  Hangman
//
//  Created by Louis Gardin on 18/02/2024.
//

import SwiftUI

struct GuessView: View {
    @Environment (Game.self) var game
    
//    func gameWon() {
//        for letter in game.word {
//            if !game.foundLetters.contains(letter.uppercased()) {
//                game.won = false
//                return
//            }
//        }
//        game.won = true
//    }
    
    var body: some View {
        var count: Int  = 0
        GeometryReader { geometry in
            let lineWidth = geometry.size.width / CGFloat(game.word.count) - 12
            HStack {
                ForEach(Array(game.word), id: \.self) { letter in
                    VStack {
                        Spacer()
                        if game.foundLetters.contains(letter.uppercased()) {
                            Text(letter.uppercased())
                                .foregroundStyle(.white)
                                .bold()
                                .padding(.bottom, 5)
                        } else {
                            Text("")
                                .padding(.bottom, 10)
                        }
                        Rectangle()
                            .frame(width: lineWidth, height: 2)
                            .padding(.leading, 4)
                            .foregroundStyle(.white)
                    }
                    .onAppear() {
//                        gameWon()
                        count += 1
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 22/255, green: 22/255, blue: 59/255))
        }
    }
}

#Preview {
    GuessView()
        .environment(Game(word: "ABCDEF"))
}
