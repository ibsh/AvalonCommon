//
//  PromptBoardPlayer.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct PromptBoardPlayer: Hashable, Codable, Sendable {
    public let id: PlayerID
    public let square: Square

    public init(
        id: PlayerID,
        square: Square
    ) {
        self.id = id
        self.square = square
    }
}
