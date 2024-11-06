//
//  Player.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

public struct Player: Codable, Sendable {
    public let id: PlayerID
    public let spec: PlayerSpec
    public var state: State
    public var canTakeActions: Bool

    public init(
        id: PlayerID,
        spec: PlayerSpec,
        state: State,
        canTakeActions: Bool
    ) {
        self.id = id
        self.spec = spec
        self.state = state
        self.canTakeActions = canTakeActions
    }
}

extension Player {
    public enum State: Codable, Sendable {
        case inReserves
        case standing(square: Square)
        case prone(square: Square)
    }
}

extension Player {
    public var coachID: CoachID {
        id.coachID
    }

    public var index: Int {
        id.index
    }

    public var skills: [PlayerSpec.Skill] {
        spec.skills
    }
}

extension Player: Equatable {
    public static func == (lhs: Player, rhs: Player) -> Bool {
        lhs.id == rhs.id
    }
}

extension Player: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
