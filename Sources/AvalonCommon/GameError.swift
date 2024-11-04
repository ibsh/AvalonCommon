//
//  GameMutationError.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/12/24.
//

public struct GameError: Error, Equatable {
    public let message: String

    public init(_ message: String) {
        self.message = message
    }
}
