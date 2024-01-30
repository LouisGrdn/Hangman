//
//  AlphabetLetter.swift
//  Hangman
//
//  Created by Louis Gardin on 28/01/2024.
//

import SwiftUI

struct AlphabetLetter: View {
    var letter: String
    
    var body: some View {
        Button(letter) {
        }
        .foregroundColor(.white)
        .bold()
        .frame(minWidth: 20)
        .padding()
        .background(Color.purple)
        .cornerRadius(50)
    }
    
}

#Preview {
    AlphabetLetter(letter: "A")
}
