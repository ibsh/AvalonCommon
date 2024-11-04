//
//  Array+ToSetTests.swift
//  AvalonCommonTests
//
//  Created by Ibrahim Sha'ath on 6/13/24.
//

import Testing
@testable import AvalonCommon

struct ArrayToSetTests {

    @Test func testToSetWithElements() async throws {
        let array = [1, 2, 3, 2, 4, 1]
        #expect(array.toSet() == [1, 2, 3, 4])
    }

    @Test func testToSetWithoutElements() async throws {
        let array: [Int] = []
        #expect(array.toSet() == [])
    }
}
