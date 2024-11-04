//
//  ChallengeDeckConfig.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

public struct ChallengeDeckConfig: Equatable, Codable, Sendable {
    public let useEndgameCards: Bool
    public let randomizeBonusPlays: Bool

    public init(
        useEndgameCards: Bool,
        randomizeBonusPlays: Bool
    ) {
        self.useEndgameCards = useEndgameCards
        self.randomizeBonusPlays = randomizeBonusPlays
    }
}
