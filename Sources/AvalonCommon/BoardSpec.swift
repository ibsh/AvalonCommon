//
//  BoardSpec.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

public struct BoardSpec: Equatable, Codable, Sendable {
    public let obstructedSquares: Set<Square>
    public let trapdoorSquares: Set<Square>

    public init(
        obstructedSquares: Set<Square>,
        trapdoorSquares: Set<Square>
    ) {
        self.obstructedSquares = obstructedSquares
        self.trapdoorSquares = trapdoorSquares
    }
}
