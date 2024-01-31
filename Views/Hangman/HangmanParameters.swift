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
    }
    
    static let gallows = [
        // Bottom
        Segment(
            line: CGPoint(x: 0.00, y: 1.00),
            curve: nil,
            control: nil
        ),
        // Left
        Segment(
            line: CGPoint(x: 0.00, y: 0.00),
            curve: nil,
            control: nil
        ),
        // Top-left
        Segment(
            line: CGPoint(x: 0.15, y: 0.00),
            curve: nil,
            control: nil
        ),
        Segment(
            line: CGPoint(x: 0.00, y: 0.15),
            curve: nil,
            control: nil
        ),
        Segment(
            line: CGPoint(x: 0.00, y: 0.00),
            curve: nil,
            control: nil
        ),
        // Middle
        Segment(
            line: CGPoint(x: 0.50, y: 0.00),
            curve: nil,
            control: nil
        ),
        Segment(
            line: CGPoint(x: 0.50, y: 0.15),
            curve: nil,
            control: nil
        ),
        ]
    static let hangman = [
        // Head
        Segment(
            line: nil,
            curve: CGPoint(x:0.40, y: 0.225),
            control: CGPoint(x: 0.40, y: 0.30)
        ),
        Segment(
            line: nil,
            curve: CGPoint(x:0.50, y: 0.15),
            control: CGPoint(x: 0.40, y: 0.15)
        ),
        Segment(
            line: nil,
            curve: CGPoint(x:0.60, y: 0.225),
            control: CGPoint(x: 0.60, y: 0.15)
        ),
        Segment(
            line: nil,
            curve: CGPoint(x:0.50, y: 0.30),
            control: CGPoint(x: 0.60, y: 0.30)
        ),
        // Left Arm
        Segment(
            line: CGPoint(x: 0.25, y: 0.45),
            curve: nil,
            control: nil
        ),
        Segment(
            line: CGPoint(x: 0.50, y: 0.30),
            curve: nil,
            control: nil
        ),
        // Right Arm
        Segment(
            line: CGPoint(x: 0.75, y: 0.45),
            curve: nil,
            control: nil
        ),
        Segment(
            line: CGPoint(x: 0.50, y: 0.30),
            curve: nil,
            control: nil
        ),
        // Body
        Segment(
            line: CGPoint(x: 0.50, y: 0.65),
            curve: nil,
            control: nil
        ),
        // Left Leg
        Segment(
            line: CGPoint(x: 0.25, y: 0.80),
            curve: nil,
            control: nil
        ),
        Segment(
            line: CGPoint(x: 0.50, y: 0.65),
            curve: nil,
            control: nil
        ),
        // Right Leg
        Segment(
            line: CGPoint(x: 0.75, y: 0.80),
            curve: nil,
            control: nil
        ),
    ]
}
