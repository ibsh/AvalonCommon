//
//  Table+Square.swift
//  AvalonThree
//
//  Created by Ibrahim Sha'ath on 6/17/24.
//

import Foundation

extension Table {

    public func squareIsUnobstructed(
        _ square: Square
    ) -> Bool {
        !boardSpecID.spec.obstructedSquares.contains(square)
    }

    public func squareIsEmptyOfPlayers(
        _ square: Square
    ) -> Bool {
        playerInSquare(square) == nil
    }

    public func opponentsAdjacentToSquare(
        _ square: Square,
        for playerID: PlayerID
    ) -> Set<Player> {
        playersInSquares(square.adjacentSquares)
            .filter { adjacentPlayer in
                adjacentPlayer.coachID != playerID.coachID
            }
    }

    public func standingOpponentsAdjacentToSquare(
        _ square: Square,
        for playerID: PlayerID
    ) -> Set<Player> {
        playersInSquares(square.adjacentSquares)
            .filter { adjacentPlayer in
                adjacentPlayer.coachID != playerID.coachID
                && adjacentPlayer.isStanding != nil
            }
    }

    public func validLooseBallDirections(from square: Square) -> [Direction] {
        Direction.allCases.filter { direction in
            guard let newSquare = square.inDirection(direction) else { return false }
            return squareIsUnobstructed(newSquare)
        }
    }
}
