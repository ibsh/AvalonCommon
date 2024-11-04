//
//  Ball.swift
//  AvalonThree
//
//  Created by Ibrahim Sha'ath on 6/18/24.
//

import Foundation

public struct Ball: Codable, Sendable {
    public let id: Int
    public var state: State

    public init(
        id: Int,
        state: State
    ) {
        self.id = id
        self.state = state
    }
}

extension Ball {
    public enum State: Codable {
        case held(playerID: PlayerID)
        case loose(square: Square)
    }
}

extension Ball: Equatable {
    public static func == (lhs: Ball, rhs: Ball) -> Bool {
        lhs.id == rhs.id
    }
}

extension Ball: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
