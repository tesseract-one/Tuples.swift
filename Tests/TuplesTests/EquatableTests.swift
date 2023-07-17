//
//  EquatableTests.swift
//  
//
//  Created by Yehor Popovych on 06/07/2023.
//

import Foundation
import XCTest
@testable import Tuples

final class EquatableTests: XCTestCase {
    func testTuple0() {
        XCTAssertTrue(Tuple0<Void>() == Tuple0<String>())
        XCTAssertTrue(Tuple0<Void>() == ())
        XCTAssertTrue(Tuple0<String>() == ())
        XCTAssertTrue(() == Tuple0<Void>())
    }
}
