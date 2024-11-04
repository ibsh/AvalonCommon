//
//  PromptDirection.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct PromptDirection: Hashable, Codable, Sendable {
    public let direction: Direction
    public let destination: Square

    public init(
        direction: Direction,
        destination: Square
    ) {
        self.direction = direction
        self.destination = destination
    }
}
