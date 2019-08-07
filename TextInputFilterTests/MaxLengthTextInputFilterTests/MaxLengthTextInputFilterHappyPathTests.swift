//
//  MaxLengthTextInputFilterHappyPathTests.swift
//  TextInputFilterTests
//
//  Created by branderstudio on 8/7/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import XCTest
@testable import TextInputFilter

class MaxLengthTextInputFilterHappyPathTests: XCTestCase {
  
  private let filter = MaxLengthTextInputFilter(maxLength: 5)
  
  // 0 -> 0
  
  func test1() {
    let actualResult = filter.filter(text: "0") ?? ""
    let expectedResult = "0"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 01 -> 01
  
  func test2() {
    let actualResult = filter.filter(text: "01") ?? ""
    let expectedResult = "01"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 012 -> 012
  
  func test3() {
    let actualResult = filter.filter(text: "012") ?? ""
    let expectedResult = "012"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 0123 -> 0123
  
  func test4() {
    let actualResult = filter.filter(text: "0123") ?? ""
    let expectedResult = "0123"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 01234 -> 01234
  
  func test5() {
    let actualResult = filter.filter(text: "01234") ?? ""
    let expectedResult = "01234"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 012345 -> 01234
  
  func test6() {
    let actualResult = filter.filter(text: "012345") ?? ""
    let expectedResult = "01234"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
}
