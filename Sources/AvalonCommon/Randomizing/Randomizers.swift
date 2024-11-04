//
//  Randomizers.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/20/24.
//

import Foundation

public struct Randomizers {
    public let ballID: BallIDRandomizing
    public let blockDie: BlockDieRandomizing
    public let coachID: CoachIDRandomizing
    public let d6: D6Randomizing
    public let d8: D8Randomizing
    public let deck: DeckRandomizing
    public let direction: DirectionRandomizing
    public let foulDie: FoulDieRandomizing
    public let playerNumber: PlayerNumberRandomizing
    public let trapdoor: TrapdoorRandomizing

    public init(
        ballID: BallIDRandomizing = DefaultBallIDRandomizer(),
        blockDie: BlockDieRandomizing = DefaultBlockDieRandomizer(),
        coachID: CoachIDRandomizing = DefaultCoachIDRandomizer(),
        d6: D6Randomizing = DefaultD6Randomizer(),
        d8: D8Randomizing = DefaultD8Randomizer(),
        deck: DeckRandomizing,
        direction: DirectionRandomizing = DefaultDirectionRandomizer(),
        foulDie: FoulDieRandomizing = DefaultFoulDieRandomizer(),
        playerNumber: PlayerNumberRandomizing = DefaultPlayerNumberRandomizer(),
        trapdoor: TrapdoorRandomizing = DefaultTrapdoorRandomizer()
    ) {
        self.ballID = ballID
        self.blockDie = blockDie
        self.coachID = coachID
        self.d6 = d6
        self.d8 = d8
        self.deck = deck
        self.direction = direction
        self.foulDie = foulDie
        self.playerNumber = playerNumber
        self.trapdoor = trapdoor
    }
}
