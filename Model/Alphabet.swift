//
//  Alphabet.swift
//  Hangman
//
//  Created by Louis Gardin on 29/01/2024.
//

import Foundation

var allLetters = ["A", "B", "C", "D", "E", "F",
                  "G", "H", "I", "J", "K", "L",
                  "M", "N", "O", "P", "Q", "R",
                  "S", "T", "U", "V", "W", "X",
                  "Y", "Z"]

@Observable
class Alphabet {
    var letters: Array = createAllLetters(letters: allLetters)
    var word: String = ""
    
}

func createAllLetters(letters: [String]) -> [Letter] {
    var all: [Letter] = []
    for i in allLetters.indices {
        all.append(Letter(id: i+1, value: allLetters[i]))
    }
    return all
}
