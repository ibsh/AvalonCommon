//
//  PassTarget.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct PassTarget: Hashable, Codable, Sendable {
    public let targetPlayer: PromptBoardPlayer
    public let distance: PassDistance
    public let obstructingSquares: Set<Square>
    public let markedTargetSquares: Set<Square>

    public init(
        targetPlayer: PromptBoardPlayer,
        distance: PassDistance,
        obstructingSquares: Set<Square>,
        markedTargetSquares: Set<Square>
    ) {
        self.targetPlayer = targetPlayer
        self.distance = distance
        self.obstructingSquares = obstructingSquares
        self.markedTargetSquares = markedTargetSquares
    }
}
