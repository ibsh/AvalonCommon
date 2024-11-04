//
//  ActionID.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/24/24.
//

import Foundation

public enum ActionID: String, CaseIterable, Codable, Sendable {
    case run
    case mark
    case pass
    case hurlTeammate
    case foul
    case block
    case sidestep
    case standUp
    case reserves
}
