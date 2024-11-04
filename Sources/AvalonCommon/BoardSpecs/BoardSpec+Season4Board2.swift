//
//  BoardSpec+Season4Board2.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

extension BoardSpec {
    public static var season4Board2: BoardSpec {
        BoardSpec(
            obstructedSquares: [
                Square(x: 5, y: 2),
                Square(x: 2, y: 4),
                Square(x: 3, y: 4),
                Square(x: 7, y: 4),
                Square(x: 8, y: 4),
                Square(x: 5, y: 7),
                Square(x: 2, y: 10),
                Square(x: 3, y: 10),
                Square(x: 7, y: 10),
                Square(x: 8, y: 10),
                Square(x: 5, y: 12),
            ]
                .compactMap { $0 }
                .toSet(),
            trapdoorSquares: [
                Square(x: 2, y: 7),
                Square(x: 8, y: 7),
            ]
                .compactMap { $0 }
                .toSet()
        )
    }
}
