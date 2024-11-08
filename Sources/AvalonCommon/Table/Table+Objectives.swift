//
//  Table+Objectives.swift
//  AvalonThree
//
//  Created by Ibrahim Sha'ath on 6/12/24.
//

import Foundation

public struct Objectives: Codable, Sendable {
    public var first: ChallengeCard?
    public var second: ChallengeCard?
    public var third: ChallengeCard?

    public init(
        first: ChallengeCard? = nil,
        second: ChallengeCard? = nil,
        third: ChallengeCard? = nil
    ) {
        self.first = first
        self.second = second
        self.third = third
    }
}

extension Objectives {

    public func getObjective(index: Int) throws -> ChallengeCard? {
        switch index {
        case 0: first
        case 1: second
        case 2: third
        default: throw GameError("Invalid objective index")
        }
    }

    public mutating func remove(_ index: Int) throws {
        switch index {
        case 0: first = nil
        case 1: second = nil
        case 2: third = nil
        default: throw GameError("Invalid objective index")
        }
    }

    public var notEmpty: [Int: ChallengeCard] {
        var result = [Int: ChallengeCard]()
        if let first {
            result[0] = first
        }
        if let second {
            result[1] = second
        }
        if let third {
            result[2] = third
        }
        return result
    }

    public var emptyCount: Int {
        3 - notEmpty.count
    }
}
