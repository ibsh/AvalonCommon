//
//  FoulDieRandomizer.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/18/24.
//

import Foundation

public protocol FoulDieRandomizing {
    func rollFoulDie() -> FoulDieResult
}

public final class DefaultFoulDieRandomizer {
    public init() { }
}

extension DefaultFoulDieRandomizer: FoulDieRandomizing {

    public func rollFoulDie() -> FoulDieResult {
        guard let result = RandomizerConstants.foulDieFaces.randomElement() else {
            fatalError("No sides on my foul die")
        }
        return result
    }
}
