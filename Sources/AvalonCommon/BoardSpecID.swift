//
//  BoardSpecID.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

public enum BoardSpecID: String, CaseIterable, Codable, Sendable {
    case season1Board1
    case season1Board2
    case season2Board1
    case season2Board2
    case season3Board1
    case season3Board2
    case season4Board1
    case season4Board2
}

extension BoardSpecID {
    public var spec: BoardSpec {
        switch self {
        case .season1Board1: return BoardSpec.season1Board1
        case .season1Board2: return BoardSpec.season1Board2
        case .season2Board1: return BoardSpec.season2Board1
        case .season2Board2: return BoardSpec.season2Board2
        case .season3Board1: return BoardSpec.season3Board1
        case .season3Board2: return BoardSpec.season3Board2
        case .season4Board1: return BoardSpec.season4Board1
        case .season4Board2: return BoardSpec.season4Board2
        }
    }
}
