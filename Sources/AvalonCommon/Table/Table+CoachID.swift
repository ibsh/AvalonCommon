//
//  Table+CoachID.swift
//  AvalonThree
//
//  Created by Ibrahim Sha'ath on 6/23/24.
//

import Foundation

extension Table {

    public func players(
        coachID: CoachID
    ) -> Set<Player> {
        players.filter { $0.coachID == coachID }
    }

    public func teamID(
        coachID: CoachID
    ) -> TeamID {
        coachID == coinFlipLoserCoachID ? coinFlipLoserTeamID : coinFlipWinnerTeamID
    }

    public func getHand(
        coachID: CoachID
    ) -> [ChallengeCard] {
        coachID == coinFlipLoserCoachID ? coinFlipLoserHand : coinFlipWinnerHand
    }

    public mutating func setHand(
        coachID: CoachID,
        hand: [ChallengeCard]
    ) {
        if coachID == coinFlipLoserCoachID {
            coinFlipLoserHand = hand
        } else {
            coinFlipWinnerHand = hand
        }
    }

    public func getActiveBonuses(
        coachID: CoachID
    ) -> [ChallengeCard] {
        coachID == coinFlipLoserCoachID ? coinFlipLoserActiveBonuses : coinFlipWinnerActiveBonuses
    }

    public mutating func addActiveBonus(
        coachID: CoachID,
        activeBonus: ChallengeCard
    ) {
        if coachID == coinFlipLoserCoachID {
            coinFlipLoserActiveBonuses.append(activeBonus)
        } else {
            coinFlipWinnerActiveBonuses.append(activeBonus)
        }
    }

    public mutating func removeActiveBonus(
        coachID: CoachID,
        activeBonus: ChallengeCard
    ) throws -> ChallengeCard {
        if coachID == coinFlipLoserCoachID {
            guard let card = coinFlipLoserActiveBonuses.removeFirst(
                where: { $0 == activeBonus }
            ) else {
                throw GameError("No active bonus")
            }
            return card
        } else {
            guard let card = coinFlipWinnerActiveBonuses.removeFirst(
                where: { $0 == activeBonus }
            ) else {
                throw GameError("No active bonus")
            }
            return card
        }
    }

    public func getScore(
        coachID: CoachID
    ) -> Int {
        coachID == coinFlipLoserCoachID ? coinFlipLoserScore : coinFlipWinnerScore
    }

    public mutating func incrementScore(
        coachID: CoachID,
        increment: Int
    ) {
        if coachID == coinFlipLoserCoachID {
            coinFlipLoserScore += increment
        } else {
            coinFlipWinnerScore += increment
        }
    }
}
