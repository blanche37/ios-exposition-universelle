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
    
    func test_formattedVisitorsMethodIsSuccess() {
        //given
        let sut = Exposition(title: "", visitors: 9999999999, location: "", duration: "", description: "")
        let expectedResult = "9,999,999,999"
        //when
        let testcase = sut.formattedVisitors
        //then
        XCTAssertEqual(testcase, expectedResult)
    }
}
