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
        if game.step > 10 || game.isWon() && game.word != "" {
            VStack {
                Text(game.isWon() ? "Félicitations vous avez gagné" : "Dommage")
                    .font(.title2)
                    .foregroundStyle(.white)
                Text(game.isWon() ? "Le mot était bien \(game.word.uppercased())" : "Le mot était \(game.word.uppercased())")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .padding(.bottom, 20)
                Button("Recommencer une partie") {
                    game = Game(word: "")
                    word = ""
                }
                .foregroundStyle(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 22/255, green: 22/255, blue: 59/255))
        }
        else if game.word != ""  && game.step <= 10{
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
                GuessView().environment(game)
                    .padding(.bottom, 50)
                AlphabetList().environment(game)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 22/255, green: 22/255, blue: 59/255))
        }
        else {
            VStack{
                TextField("Mot", text: $word)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom)
                    .submitLabel(.done)
                    .padding(.horizontal, 90)
                Button("Valider") {
                    if word != "" && word.contains(try! Regex("([a-zA-Z])")) {
                        game = Game(word: word)
                    }
                    else {
                        word = ""
                    }
                }
                .foregroundStyle(.white)
                .buttonStyle(.borderedProminent)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 22/255, green: 22/255, blue: 59/255))
        }
    }
    
}

#Preview {
    ContentView()
}
