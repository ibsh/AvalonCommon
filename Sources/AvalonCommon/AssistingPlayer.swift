//
//  AssistingPlayer.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct AssistingPlayer: Hashable, Codable, Sendable {
    public let id: PlayerID
    public let square: Square
    public let direction: Direction

    public init(
        id: PlayerID,
        square: Square,
        direction: Direction
    ) {
        self.id = id
        self.square = square
        self.direction = direction
    }
}
