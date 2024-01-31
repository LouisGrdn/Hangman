//
//  Hangman.swift
//  Hangman
//
//  Created by Louis Gardin on 30/01/2024.
//

import SwiftUI

struct Hangman: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                var width = min(geometry.size.width, geometry.size.height)
                let height = width
                let xOffset = (width * 0.2) / 2.0
                width *= 0.8
                path.move(to: CGPoint(x: width, y: height))
                
                HangmanParameters.gallows.forEach { segment in
                    if(segment.line != nil) {
                        path.addLine(
                            to: CGPoint(
                                x: width * segment.line!.x + xOffset,
                                y: height * segment.line!.y))
                    }
                    if(segment.curve != nil) {
                        path.addQuadCurve(
                            to: CGPoint(
                                x: width * segment.curve!.x + xOffset,
                                y: height * segment.curve!.y),
                            control: CGPoint(
                                x: width * segment.control!.x + xOffset,
                                y: height * segment.control!.y))
                    }
                }
                path.move(to: CGPoint(
                    x: width * 0.50 + xOffset,
                    y: height * 0.30))
                HangmanParameters.hangman.forEach { segment in
                    if(segment.line != nil) {
                        path.addLine(
                            to: CGPoint(
                                x: width * segment.line!.x + xOffset,
                                y: height * segment.line!.y))
                    }
                    if(segment.curve != nil) {
                        path.addQuadCurve(
                            to: CGPoint(
                                x: width * segment.curve!.x + xOffset,
                                y: height * segment.curve!.y),
                            control: CGPoint(
                                x: width * segment.control!.x + xOffset,
                                y: height * segment.control!.y))
                    }
                }
            }
            .stroke(Color.black, lineWidth: 2.5)
        }
//        .background(Color.purple)
    }
}

#Preview {
    Hangman()
}
