//
//  BlockResults.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct BlockResults: Hashable, Codable, Sendable {
    public var dice: [BlockDieResult]
    public var claws: Int?

    public init(
        dice: [BlockDieResult],
        claws: Int? = nil
    ) {
        self.dice = dice
        self.claws = claws
    }
}
