//
//  ChallengeCard.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

public struct ChallengeCard: Hashable, Codable, Sendable {
    public let challenge: Challenge
    public let bonusPlay: BonusPlay

    public init(
        challenge: Challenge,
        bonusPlay: BonusPlay
    ) {
        self.challenge = challenge
        self.bonusPlay = bonusPlay
    }
}
