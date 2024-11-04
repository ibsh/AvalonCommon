//
//  Game.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

public protocol Game: Codable, Sendable {

    mutating func process(
        _ messageWrapper: InputMessageWrapper,
        randomizers: Randomizers
    ) throws -> ([Event], AddressedPrompt?)

    var isFinished: Bool { get }
}
