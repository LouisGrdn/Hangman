//
//  Letter.swift
//  Hangman
//
//  Created by Louis Gardin on 29/01/2024.
//

import Foundation

class Letter: Identifiable{
    
    init(id: Int, value: String, isInWord: Bool = false, isPressed: Bool = false) {
        self.id = id
        self.value = value
        self.isInWord = isInWord
        self.isPressed = isPressed
    }
    var id: Int
    var value: String
    var isInWord: Bool = false
    var isPressed = false
}
