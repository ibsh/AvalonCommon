//
//  BlockDieRandomizer.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/18/24.
//

import Foundation

public protocol BlockDieRandomizing {
    func rollBlockDie() -> BlockDieResult
}

public final class DefaultBlockDieRandomizer {
    public init() { }
}

extension DefaultBlockDieRandomizer: BlockDieRandomizing {

    public func rollBlockDie() -> BlockDieResult {
        guard let result = RandomizerConstants.blockDieFaces.randomElement() else {
            fatalError("No sides on my block die")
        }
        return result
    }
}
