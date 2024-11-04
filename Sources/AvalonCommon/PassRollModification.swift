//
//  PassRollModification.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public enum PassRollModification: String, Hashable, Codable, Sendable {
    case longDistance
    case obstructed
    case targetPlayerMarked
}
