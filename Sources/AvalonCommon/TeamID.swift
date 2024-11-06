//
//  TeamID.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

public enum TeamID: String, Codable, Sendable {
    /// - Note: Unique to 4E.
    case amazon

    case blackOrc

    /// - Note: named "Chaos Chosen" in 4E.
    case chaos

    case darkElf

    case dwarf

    /// - Note: named "Elven Union" in 4E.
    case elf

    /// - Note: Unique to 4E.
    case gnome

    case goblin

    case halfling

    case human

    case khorne

    case lizardmen

    case necromantic

    /// - Note: named "Imperial Nobility" in 4E.
    case noble

    /// - Note: Unique to 4E.
    case norse

    case nurgle

    case ogre

    case orc

    case skaven

    case snotling

    /// - Note: named "Shambling Undead" in 4E.
    case undead

    /// - Note: Unique to 4E.
    case vampire

    case woodElf
}
