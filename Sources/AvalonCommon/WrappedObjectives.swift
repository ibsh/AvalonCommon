//
//  WrappedObjectives.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct WrappedObjectives: Equatable, Codable, Sendable {
    public let first: WrappedObjective?
    public let second: WrappedObjective?
    public let third: WrappedObjective?

    public init(
        first: WrappedObjective?,
        second: WrappedObjective?,
        third: WrappedObjective?
    ) {
        self.first = first
        self.second = second
        self.third = third
    }
}
