//
//  AlphabetLetter.swift
//  Hangman
//
//  Created by Louis Gardin on 28/01/2024.
//

import SwiftUI

struct AlphabetLetter: View {
    @Binding var letter: Letter
    var updateLetter: (inout Letter) -> Void
    
    var body: some View {
        // Button clicked
        if(letter.isPressed)
        {
            Button(letter.value) {
            }
            .foregroundColor(.white)
            .padding()
            .frame(width: 45, height: 45)
            .background(letter.isInWord ? .green : .red)
            .cornerRadius(22.5)
            .overlay(
                RoundedRectangle(cornerRadius: 75)
                    .stroke(Color.white, lineWidth: 2)
            )
        }
        else {
            Button(letter.value) {
                updateLetter(&letter)
            }
            .foregroundColor(.white)
            .padding()
            .frame(width: 45, height: 45)
            .background(Color(red: 123/255, green: 44/255, blue: 191/255))
            .cornerRadius(22.5)
            .overlay(
                RoundedRectangle(cornerRadius: 75)
                    .stroke(Color.white, lineWidth: 2)
            )
        }
    }
    
}

//#Preview {
//    AlphabetLetter(letter: .constant(Letter(id: 1, value: "A", isPressed: false)))
//}
