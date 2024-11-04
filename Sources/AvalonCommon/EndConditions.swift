//
//  EndConditions.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public enum EndConditions: Equatable, Codable, Sendable {
    case suddenDeath(coachID: CoachID)
    case clock(coachID: CoachID)
    case tie
}
