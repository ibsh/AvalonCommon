//
//  PromptValidDeclaration.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct PromptValidDeclaration: Hashable, Codable, Sendable {
    public let actionID: ActionID
    public let consumesBonusPlays: Set<BonusPlay>

    public init(
        actionID: ActionID,
        consumesBonusPlays: Set<BonusPlay>
    ) {
        self.actionID = actionID
        self.consumesBonusPlays = consumesBonusPlays
    }
}
