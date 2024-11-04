//
//  HurlTeammateTarget.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct HurlTeammateTarget: Hashable, Codable, Sendable {
    public let targetSquare: Square
    public let distance: PassDistance
    public let obstructingSquares: Set<Square>

    public init(
        targetSquare: Square,
        distance: PassDistance,
        obstructingSquares: Set<Square>
    ) {
        self.targetSquare = targetSquare
        self.distance = distance
        self.obstructingSquares = obstructingSquares
    }
}
