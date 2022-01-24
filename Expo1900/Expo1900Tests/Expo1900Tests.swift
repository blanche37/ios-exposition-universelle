//
//  Expo1900Tests.swift
//  Expo1900Tests
//
//  Created by yun on 2022/01/24.
//

import XCTest
@testable import Expo1900

class Expo1900Tests: XCTestCase {
    
    func test_parsedExpoDataIsNotNil() {
        //given
        let sut = Parser()
        //when
        let testcase = sut.expoData
        //then
        XCTAssertNotNil(testcase)
    }
    
    
}
