//
//  RandomAccessCollection+ToSet.swift
//  AvalonCommon
//
//  Created by Ibrahim Sha'ath on 6/13/24.
//

import Foundation

extension RandomAccessCollection where Element: Hashable {

    public func toSet() -> Set<Element> {
        Set(self)
    }
}
