//
//  AlphabetList.swift
//  Hangman
//
//  Created by Louis Gardin on 30/01/2024.
//

import SwiftUI

struct AlphabetList: View {
    @Environment (Game.self) var game
    
//    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 8)
    
    private let columns = [
        GridItem(.adaptive(minimum: 50))
    ]
    
    
    func pressLetter(_ letter: inout Letter) {
        letter.isPressed = true;
        if !letter.isInWord {
            game.step += 1
        } else {
            game.foundLetters.append(letter.value.uppercased())
        }
    }

        var body: some View {
            @Bindable var alphabet: Game = game
            LazyVGrid(columns: columns, alignment: .center) {
                ForEach($alphabet.allLetters) { letter in
                    AlphabetLetter(letter: letter, updateLetter: pressLetter)
                }
            }
        }
}

#Preview {
    AlphabetList()
        .environment(Game(word: "aCeG"))
}
