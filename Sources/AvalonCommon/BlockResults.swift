//
//  BlockResults.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct BlockResults: Hashable, Codable, Sendable {
    public var dice: [BlockDieResult]
    public var extra: Int?

    public init(
        dice: [BlockDieResult],
        extra: Int? = nil
    ) {
        self.dice = dice
        self.extra = extra
    }
}
