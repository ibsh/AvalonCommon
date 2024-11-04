//
//  PlayerInjuryReason.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public enum PlayerInjuryReason: String, Equatable, Codable, Sendable {
    case blocked
    case fouled
    case fumbled
    case trapdoor
}
