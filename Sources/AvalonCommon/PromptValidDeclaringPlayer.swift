//
//  PromptValidDeclaringPlayer.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct PromptValidDeclaringPlayer: Hashable, Codable, Sendable {
    public let playerID: PlayerID
    public let square: Square?
    public var declarations: [PromptValidDeclaration]

    public init(
        playerID: PlayerID,
        square: Square?,
        declarations: [PromptValidDeclaration]
    ) {
        self.playerID = playerID
        self.square = square
        self.declarations = declarations
    }
}
