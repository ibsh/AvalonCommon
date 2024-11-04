//
//  BallIDRandomizer.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/20/24.
//

import Foundation

public protocol BallIDRandomizing {
    func generate() -> Int
}

public final class DefaultBallIDRandomizer {
    public init() { }
}

extension DefaultBallIDRandomizer: BallIDRandomizing {
    public func generate() -> Int {
        guard let result = RandomizerConstants.ballIDRange.randomElement() else {
            fatalError("No player numbers in my range")
        }
        return result
    }
}
