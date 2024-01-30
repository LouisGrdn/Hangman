//
//  AlphabetList.swift
//  Hangman
//
//  Created by Louis Gardin on 30/01/2024.
//

import SwiftUI

struct AlphabetList: View {
    @Environment(Alphabet.self) var alphabet
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 5)

        var body: some View {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(alphabet.letters) { letter in
                    AlphabetLetter(letter: letter.value)
                        .frame(width: 50, height: 50)
                }
            }
            .padding()
            .background(Color.primary)
        }
}

#Preview {
    AlphabetList()
        .environment(Alphabet())
}
