//
//  PlayerMoveReason.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public enum PlayerMoveReason: String, Equatable, Codable, Sendable {
    case run
    case sidestep
    case mark
    case shoved
    case followUp
    case shadow
}
