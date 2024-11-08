//
//  BoardSpec+Season3Board2.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

extension BoardSpec {
    public static var season3Board2: BoardSpec {
        BoardSpec(
            obstructedSquares: [
                Square(x: 4, y: 2),
                Square(x: 5, y: 2),
                Square(x: 6, y: 2),
                Square(x: 1, y: 7),
                Square(x: 2, y: 7),
                Square(x: 8, y: 7),
                Square(x: 9, y: 7),
                Square(x: 4, y: 12),
                Square(x: 5, y: 12),
                Square(x: 6, y: 12),
            ]
                .compactMap { $0 }
                .toSet(),
            trapdoorSquares: [
                Square(x: 5, y: 5),
                Square(x: 5, y: 9),
            ]
                .compactMap { $0 }
                .toSet()
        )
    }
}
