//
//  ContentView.swift
//  Hangman
//
//  Created by Louis Gardin on 28/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var game: Game = Game(word: "")
    @State private var word: String = ""
    var body: some View {
        let step = game.step
        let bindingStep = Binding(get: {step}, set: {newValue in game.step = newValue})
        if game.word != "" {
            VStack {
                HStack {
                    Spacer()
                    Button("Recommencer") {
                        game = Game(word: "")
                        word = ""
                    }
                    .foregroundStyle(.white)

                }
                Hangman(step: bindingStep)
                    .frame(width: 300, height: 300)
                    .padding(.bottom, 50)
                AlphabetList().environment(game)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
        }
        else {
            TextField("Mot", text: $word)
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom)
                .submitLabel(.done)
            Button("Valider") {
                if word != "" && word.contains(try! Regex("([a-zA-Z])")) {
                    game = Game(word: word)
                }
                else {
                    word = ""
                }
            }
        }
    }
    
}

#Preview {
    ContentView()
}
