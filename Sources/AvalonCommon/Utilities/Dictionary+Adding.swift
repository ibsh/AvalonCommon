//
//  File.swift
//  AvalonThree
//
//  Created by Ibrahim Sha'ath on 9/28/24.
//

import Foundation

extension Dictionary {

    public func adding(key: Key, value: Value) -> Self {
        var result = self
        result[key] = value
        return result
    }
}
