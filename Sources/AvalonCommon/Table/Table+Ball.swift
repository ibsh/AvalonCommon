//
//  Table+Ball.swift
//  AvalonThree
//
//  Created by Ibrahim Sha'ath on 6/18/24.
//

import Foundation

extension Table {

    public func getBall(
        id: Int
    ) -> Ball? {
        balls.first(
            where: { $0.id == id }
        )
    }

    public func looseBalls(
        in square: Square
    ) -> Set<Ball> {
        balls.filter { ball in
            switch ball.state {
            case .held: false
            case .loose(let ballSquare): ballSquare == square
            }
        }
    }

    public func playerHasABall(
        _ player: Player
    ) -> Ball? {
        balls.first(where: { ball in
            switch ball.state {
            case .held(let playerID): player.id == playerID
            case .loose: false
            }
        })
    }
}
