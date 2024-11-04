//
//  Player+State.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/12/24.
//

import Foundation

extension Player {

    public var square: Square? {
        switch state {
        case .inReserves:
            nil
        case .standing(let square),
             .prone(let square):
            square
        }
    }

    public var isProne: Square? {
        switch state {
        case .inReserves,
             .standing:
            nil
        case .prone(let square):
            square
        }
    }

    public var isStanding: Square? {
        switch state {
        case .inReserves,
             .prone:
            nil
        case .standing(let square):
            square
        }
    }

    public var isInReserves: Bool {
        switch state {
        case .inReserves:
            true
        case .standing,
             .prone:
            false
        }
    }
}
