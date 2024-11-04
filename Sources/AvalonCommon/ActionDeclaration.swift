//
//  ActionDeclaration.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/29/24.
//

import Foundation

public struct ActionDeclaration: Hashable, Codable, Sendable {
    public let playerID: PlayerID
    public let actionID: ActionID

    public init(
        playerID: PlayerID,
        actionID: ActionID
    ) {
        self.playerID = playerID
        self.actionID = actionID
    }

    public var coachID: CoachID {
        playerID.coachID
    }
}
