//
//  TeamSpec.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

public struct TeamSpec: Equatable, Codable, Sendable {
    public let id: TeamID
    public let playerSpecs: [PlayerSpec]
    public let emergencyReserves: Int

    public init(
        id: TeamID,
        playerSpecs: [PlayerSpec],
        emergencyReserves: Int
    ) {
        self.id = id
        self.playerSpecs = playerSpecs
        self.emergencyReserves = emergencyReserves
    }
}
