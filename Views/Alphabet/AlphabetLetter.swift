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
            // Good guess
            if(letter.isInWord){
                Button(letter.value) {
                }
                .foregroundColor(.white)
                .bold()
                .frame(minWidth: 20)
                .padding()
                .background(Color.green)
                .cornerRadius(50)
            }
            // Bad guess
            else {
                Button(letter.value) {
                }
                .foregroundColor(.white)
                .bold()
                .frame(minWidth: 20)
                .padding()
                .background(Color.red)
                .cornerRadius(50)
            }
        }
        else {
            Button(letter.value) {
//                if(letter.isInWord) {
                    updateLetter(&letter)
//                }
            }
            .foregroundColor(.white)
            .bold()
            .frame(minWidth: 20)
            .padding()
            .background(Color.purple)
            .cornerRadius(50)
        }
    }
    
}

//#Preview {
//    AlphabetLetter(letter: .constant(Letter(id: 1, value: "A", isPressed: false)))
//}
