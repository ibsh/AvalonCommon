//
//  Player.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

public struct PlayerID: Hashable, Codable, Sendable {
    public let coachID: CoachID
    public let index: Int

    public init(
        coachID: CoachID,
        index: Int
    ) {
        self.coachID = coachID
        self.index = index
    }
}
