//
//  WrappedObjective.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct WrappedObjective: Equatable, Codable, Sendable {
    public let challenge: Challenge
    public let value: Int

    public init(
        challenge: Challenge,
        value: Int
    ) {
        self.challenge = challenge
        self.value = value
    }
}
