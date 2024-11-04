//
//  PassMeasure.swift
//  AvalonThree
//
//  Created by Ibrahim Sha'ath on 6/14/24.
//

import Foundation

public struct PassMeasure: Hashable, Codable, Sendable {
    public let distance: PassDistance
    public let touchingSquares: Set<Square>
}

public enum PassDistance: String, Codable, Sendable {
    case handoff
    case short
    case long
}
