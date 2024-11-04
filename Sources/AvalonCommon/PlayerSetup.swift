//
//  PlayerSetup.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct PlayerSetup: Hashable, Codable, Sendable {
    public let id: PlayerID
    public let spec: PlayerSpec

    public init(
        id: PlayerID,
        spec: PlayerSpec
    ) {
        self.id = id
        self.spec = spec
    }
}
