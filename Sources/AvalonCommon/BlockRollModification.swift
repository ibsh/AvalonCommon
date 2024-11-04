//
//  BlockRollModification.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 11/2/24.
//

import Foundation

public enum BlockRollModification: String, Hashable, Codable, Sendable {
    case playerThrewBomb
    case playerIsHulkingBrute
    case playerHasMightyBlow
    case playerIsInsignificant
    case playerIsTitchy
    case opponentIsHulkingBrute
    case opponentHasStandFirm
}
