//
//  Square.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/3/24.
//

import Foundation

public struct Square: Hashable, Codable, Sendable {
    public let x: Int
    public let y: Int

    public init?(x: Int, y: Int) {
        guard
            Constants.xRange.contains(x),
            Constants.yRange.contains(y)
        else {
            return nil
        }
        self.x = x
        self.y = y
    }

    public static var all: Set<Square> {
        var all = Set<Square>()
        for y in Constants.yRange {
            for x in Constants.xRange {
                guard let square = Square(x: x, y: y) else { continue }
                all.insert(square)
            }
        }
        return all
    }
}

extension Square {

    public enum Constants {
        public static let xRange = 0...10
        public static let yRange = 0...14
    }
}

extension Square {

    public func naiveDistance(to target: Square) -> Int {
        max(abs(target.y - y), abs(target.x - x))
    }

    public func isAdjacent(to target: Square) -> Bool {
        naiveDistance(to: target) == 1
    }

    public var adjacentSquares: [Square] {
        naiveNeighbourhood(distance: 1)
    }

    public func naiveNeighbourhood(distance: Int) -> [Square] {
        var result = Set<Square>()
        for nY in (y - distance)...(y + distance) {
            for nX in (x - distance)...(x + distance) {
                if let square = Square(x: nX, y: nY) {
                    result.update(with: square)
                }
            }
        }
        return
            result
            .sorted(
                by: { lhs, rhs in
                    let lhsD = lhs.naiveDistance(to: self)
                    let rhsD = rhs.naiveDistance(to: self)
                    if lhsD != rhsD {
                        return lhsD < rhsD
                    }
                    let lhsY = lhs.y
                    let rhsY = rhs.y
                    if lhsY != rhsY {
                        return lhsY < rhsY
                    }
                    return lhs.x < rhs.x
                }
            )
    }
}
