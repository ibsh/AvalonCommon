//
//  PlayerSpec.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

public struct PlayerSpec: Hashable, Codable, Sendable {
    public let id: PlayerSpecID
    public let move: Move
    public let block: Int
    public let pass: Int?
    public let armour: Int?
    public let skills: [Skill]

    public init(
        id: PlayerSpecID,
        move: Move,
        block: Int,
        pass: Int?,
        armour: Int?,
        skills: [Skill]
    ) {
        self.id = id
        self.move = move
        self.block = block
        self.pass = pass
        self.armour = armour
        self.skills = skills
    }
}
