//
//  InputMessageWrapper.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct InputMessageWrapper: Codable, Sendable {
    public let coachID: CoachID
    public let message: InputMessage

    public init(
        coachID: CoachID,
        message: InputMessage
    ) {
        self.coachID = coachID
        self.message = message
    }
}
