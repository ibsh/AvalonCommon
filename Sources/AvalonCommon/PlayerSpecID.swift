//
//  PlayerSpecID.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

public enum PlayerSpecID: String, Hashable, Codable, Sendable {
    case amazon_linewoman
    case amazon_thrower
    case amazon_blitzer
    case amazon_blocker
    case blackOrc_blackOrc
    case blackOrc_goblin
    case chaos_beastman
    case chaos_chosenBlocker
    case darkElf_lineman
    case darkElf_runner
    case darkElf_blitzer
    case darkElf_witchElf
    case dwarf_lineman
    case dwarf_runner
    case dwarf_blitzer
    case dwarf_trollslayer
    case elf_lineman
    case elf_passer
    case elf_catcher
    case elf_blitzer
    case goblin_goblin
    case goblin_troll
    case gnome_lineman
    case gnome_illusionist
    case gnome_beastmaster
    case gnome_woodland_fox
    case gnome_treeman
    /// - Note: named "Lineman" in 4E.
    case halfling_hopeful
    case halfling_catcher
    case halfling_hefty
    case halfling_treeman
    case human_lineman
    case human_passer
    case human_catcher
    case human_blitzer
    case khorne_marauder
    case khorne_khorngor
    case khorne_bloodseeker
    case lizardmen_skinkRunner
    case lizardmen_chameleonSkinkCatcher
    case lizardmen_saurusBlocker
    case necromantic_zombie
    case necromantic_ghoul
    case necromantic_wraith
    case necromantic_werewolf
    case necromantic_fleshGolem
    case noble_lineman
    case noble_passer
    /// - Note: named "Bodyguard" in 4E.
    case noble_guard
    case noble_blitzer
    case norse_lineman
    case norse_beer_boar
    case norse_berserker
    case norse_valkyrie
    case norse_ulfwerener
    case nurgle_lineman
    case nurgle_pestigor
    case nurgle_bloater
    case ogre_ogre
    case ogre_gnoblar
    case orc_lineman
    case orc_passer
    case orc_blitzer
    case orc_bigUnBlocker
    case skaven_lineman
    case skaven_passer
    case skaven_gutterRunner
    case skaven_blitzer
    case snotling_snotling
    case snotling_fungusFlinga
    case snotling_funHoppa
    case snotling_stiltyRunna
    case snotling_pumpWagon
    case undead_skeleton
    case undead_zombie
    case undead_ghoul
    case undead_wight
    case undead_mummy
    case vampire_thrall
    case vampire_runner
    case vampire_passer
    case vampire_blitzer
    case woodElf_lineman
    case woodElf_passer
    case woodElf_catcher
    case woodElf_wardancer
}
