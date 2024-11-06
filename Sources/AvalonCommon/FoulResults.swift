//
//  FoulResults.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/6/24.
//

import Foundation

public struct FoulResults: Hashable, Codable, Sendable {
    public var die: FoulDieResult
    public var extra: Int?

    public init(
        die: FoulDieResult,
        extra: Int? = nil
    ) {
        self.die = die
        self.extra = extra
    }
}
