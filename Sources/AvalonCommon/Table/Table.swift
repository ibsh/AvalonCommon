//
//  Table.swift
//  AvalonThree
//
//  Created by Ibrahim Sha'ath on 6/17/24.
//

import Foundation

public protocol Table: Codable, Sendable {
    var coinFlipWinnerCoachID: CoachID { get }
    var boardSpecID: BoardSpecID { get }
    var coinFlipWinnerTeamID: TeamID { get }
    var coinFlipLoserTeamID: TeamID { get }
    var players: Set<Player> { get set }
    var playerNumbers: [PlayerID: Int] { get set }
    var coinFlipLoserHand: [ChallengeCard] { get set }
    var coinFlipWinnerHand: [ChallengeCard] { get set }
    var coinFlipLoserActiveBonuses: [ChallengeCard] { get set }
    var coinFlipWinnerActiveBonuses: [ChallengeCard] { get set }
    var coinFlipLoserScore: Int { get set }
    var coinFlipWinnerScore: Int { get set }
    var balls: Set<Ball> { get set }
    var deck: [ChallengeCard] { get set }
    var objectives: Objectives { get set }
    var discards: [ChallengeCard] { get set }
}

extension Table {
    public var coinFlipLoserCoachID: CoachID {
        coinFlipWinnerCoachID.inverse
    }
}
