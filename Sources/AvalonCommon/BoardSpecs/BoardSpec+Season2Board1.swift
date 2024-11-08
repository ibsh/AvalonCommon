//
//  BoardSpec+Season2Board1.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

extension BoardSpec {
    public static var season2Board1: BoardSpec {
        BoardSpec(
            obstructedSquares: [
                Square(x: 1, y: 6),
                Square(x: 2, y: 6),
                Square(x: 8, y: 6),
                Square(x: 9, y: 6),
                Square(x: 1, y: 7),
                Square(x: 2, y: 7),
                Square(x: 8, y: 7),
                Square(x: 9, y: 7),
                Square(x: 1, y: 8),
                Square(x: 2, y: 8),
                Square(x: 8, y: 8),
                Square(x: 9, y: 8),
            ]
                .compactMap { $0 }
                .toSet(),
            trapdoorSquares: [
                Square(x: 5, y: 7)
            ]
                .compactMap { $0 }
                .toSet()
        )
    }
}
