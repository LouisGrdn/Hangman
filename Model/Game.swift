//
//  Alphabet.swift
//  Hangman
//
//  Created by Louis Gardin on 29/01/2024.
//

import Foundation

var alphabet = ["A", "B", "C", "D", "E", "F",
                  "G", "H", "I", "J", "K", "L",
                  "M", "N", "O", "P", "Q", "R",
                  "S", "T", "U", "V", "W", "X",
                  "Y", "Z"]

@Observable 
class Game {
    init(word: String) {
        //Word to guess
        self.word = word
        // Letters in the word
        self.letters = []
        // All letters to show
        self.allLetters = []
        // Number of error
        self.step = 0
        for char in word {
            let c = char.uppercased()
            if(!self.letters.contains(c)){
                letters.append(c)
            }
        }
        for i in alphabet.indices {
            self.allLetters.append(Letter(id: i+1, value: alphabet[i], isInWord: self.letters.contains(alphabet[i])))
        }
    }
    
    var allLetters: Array<Letter>
    var word: String = ""
    var letters: Array<String>
    var step: Int
    
}


