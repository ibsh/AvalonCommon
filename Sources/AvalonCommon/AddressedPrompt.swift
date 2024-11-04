//
//  AddressedPrompt.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public struct AddressedPrompt: Equatable, Codable, Sendable {
    public let coachID: CoachID
    public let prompt: Prompt

    public init(
        coachID: CoachID,
        prompt: Prompt
    ) {
        self.coachID = coachID
        self.prompt = prompt
    }
}
