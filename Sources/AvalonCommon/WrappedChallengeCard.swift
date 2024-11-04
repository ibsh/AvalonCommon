//
//  WrappedChallengeCard.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public enum WrappedChallengeCard: Hashable, Codable, Sendable {
    case open(card: ChallengeCard)
    case closed(challenge: Challenge)
}
