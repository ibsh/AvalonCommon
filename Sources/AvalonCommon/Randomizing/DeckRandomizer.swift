//
//  DeckRandomizer.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/17/24.
//

import Foundation

public protocol DeckRandomizing {
    func deal(_ config: ChallengeDeckConfig) -> [ChallengeCard]
}
