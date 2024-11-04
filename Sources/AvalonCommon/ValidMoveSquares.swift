//
//  ValidMoveSquares.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct ValidMoveSquares: Hashable, Codable, Sendable {
    public let intermediate: Set<Square>
    public let final: Set<Square>

    public init(
        intermediate: Set<Square>,
        final: Set<Square>
    ) {
        self.intermediate = intermediate
        self.final = final
    }
}
