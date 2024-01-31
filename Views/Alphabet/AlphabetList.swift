//
//  AlphabetList.swift
//  Hangman
//
//  Created by Louis Gardin on 30/01/2024.
//

import SwiftUI

struct AlphabetList: View {
    @State private var alphabet = Game(word: "aCeG")
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 5)
    
    func pressLetter(_ letter: inout Letter) {
        letter.isPressed = true;
    }

        var body: some View {
            @Bindable var alphabet = alphabet
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach($alphabet.allLetters) { $letter in
                    AlphabetLetter(letter: $letter, updateLetter: pressLetter)
                }
            }
            .padding()
//            .background(Color.primary)
        }
}

#Preview {
    AlphabetList()
}
