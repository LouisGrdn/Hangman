//
//  ContentView.swift
//  Hangman
//
//  Created by Louis Gardin on 28/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Hangman()
            AlphabetList().environment(Game(word: "ACEGIKMOQSUWY"))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
