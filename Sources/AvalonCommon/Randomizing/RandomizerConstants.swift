//
//  RandomizerConstants.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public enum RandomizerConstants {
    public static let d6Range = 1...6
    public static let d8Range = 1...8

    public static let rollOfOne = 1
    public static let rollOfSix = 6

    static let blockDieFaces: Set<BlockDieResult> = [
        .miss,
        .shove,
        .shove,
        .tackle,
        .smash,
        .kerrunch,
    ]
    static let foulDieFaces: Set<FoulDieResult> = [
        .spotted,
        .takeThat,
        .slipped,
        .slipped,
        .gotThem,
        .gotThem,
    ]
    static let ballIDRange = 0...99
    static let playerNumberRange = 0...99
}
