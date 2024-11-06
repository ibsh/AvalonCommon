//
//  ChallengeDeckConfig.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

public struct ChallengeDeckConfig: Equatable, Codable, Sendable {
    public let useExtraCards: Bool
    public let randomizeBonusPlays: Bool

    public init(
        useExtraCards: Bool,
        randomizeBonusPlays: Bool
    ) {
        self.useExtraCards = useExtraCards
        self.randomizeBonusPlays = randomizeBonusPlays
    }
}
