//
//  PlayerNumberRandomizer.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 9/25/24.
//

import Foundation

public protocol PlayerNumberRandomizing {
    func generate() -> Int
}

public final class DefaultPlayerNumberRandomizer {
    public init() { }
}

extension DefaultPlayerNumberRandomizer: PlayerNumberRandomizing {

    public func generate() -> Int {
        guard let result = RandomizerConstants.playerNumberRange.randomElement() else {
            fatalError("No player numbers in my range")
        }
        return result
    }
}
