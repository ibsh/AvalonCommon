//
//  Comparable+Clamp.swift
//  AvalonThree
//
//  Created by Ibrahim Sha'ath on 7/18/24.
//

import Foundation

extension Comparable {

    public func clamp(_ range: ClosedRange<Self>) -> Self {
        max(range.lowerBound, min(range.upperBound, self))
    }
}
