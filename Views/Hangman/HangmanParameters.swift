//
//  HangmanParameters.swift
//  Hangman
//
//  Created by Louis Gardin on 30/01/2024.
//

import Foundation
import CoreGraphics

struct HangmanParameters {
    struct Segment {
        let line: CGPoint?
        let curve: CGPoint?
        let control: CGPoint?
        let step: Int
    }
    
    static let gallows = [
        // Bottom
        Segment(
            line: CGPoint(x: 0.00, y: 1.00),
            curve: nil,
            control: nil,
            step: 0
        ),
        // Left
        Segment(
            line: CGPoint(x: 0.00, y: 0.00),
            curve: nil,
            control: nil,
            step: 1
        ),
        // Top-left
        Segment(
            line: CGPoint(x: 0.15, y: 0.00),
            curve: nil,
            control: nil,
            step: 2
        ),
        Segment(
            line: CGPoint(x: 0.00, y: 0.15),
            curve: nil,
            control: nil,
            step: 2
        ),
        Segment(
            line: CGPoint(x: 0.00, y: 0.00),
            curve: nil,
            control: nil,
            step: 2
        ),
        // Middle
        Segment(
            line: CGPoint(x: 0.50, y: 0.00),
            curve: nil,
            control: nil,
            step: 3
        ),
        Segment(
            line: CGPoint(x: 0.50, y: 0.15),
            curve: nil,
            control: nil,
            step: 4
        ),
        ]
    static let hangman = [
        // Head
        Segment(
            line: nil,
            curve: CGPoint(x:0.40, y: 0.225),
            control: CGPoint(x: 0.40, y: 0.30),
            step: 5
        ),
        Segment(
            line: nil,
            curve: CGPoint(x:0.50, y: 0.15),
            control: CGPoint(x: 0.40, y: 0.15),
            step: 5
        ),
        Segment(
            line: nil,
            curve: CGPoint(x:0.60, y: 0.225),
            control: CGPoint(x: 0.60, y: 0.15),
            step: 5
        ),
        Segment(
            line: nil,
            curve: CGPoint(x:0.50, y: 0.30),
            control: CGPoint(x: 0.60, y: 0.30),
            step: 5
        ),
        // Left Arm
        Segment(
            line: CGPoint(x: 0.25, y: 0.45),
            curve: nil,
            control: nil,
            step: 6
        ),
        Segment(
            line: CGPoint(x: 0.50, y: 0.30),
            curve: nil,
            control: nil,
            step: 6
        ),
        // Right Arm
        Segment(
            line: CGPoint(x: 0.75, y: 0.45),
            curve: nil,
            control: nil,
            step: 7
        ),
        Segment(
            line: CGPoint(x: 0.50, y: 0.30),
            curve: nil,
            control: nil,
            step: 7
        ),
        // Body
        Segment(
            line: CGPoint(x: 0.50, y: 0.65),
            curve: nil,
            control: nil,
            step: 8
        ),
        // Left Leg
        Segment(
            line: CGPoint(x: 0.25, y: 0.80),
            curve: nil,
            control: nil,
            step: 9
        ),
        Segment(
            line: CGPoint(x: 0.50, y: 0.65),
            curve: nil,
            control: nil,
            step: 9
        ),
        // Right Leg
        Segment(
            line: CGPoint(x: 0.75, y: 0.80),
            curve: nil,
            control: nil,
            step: 10
        ),
    ]
}
