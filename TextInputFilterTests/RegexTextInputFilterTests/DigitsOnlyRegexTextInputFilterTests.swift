//
//  DigitsOnlyRegexTextInputFilterTests.swift
//  TextInputFilterTests
//
//  Created by branderstudio on 20.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import XCTest
@testable import TextInputFilter

class DigitsOnlyRegexTextInputFilterTests: XCTestCase {

  private let filter = RegexTextInputFilter(allowedSymbolsRegex: "[0-9]")
  
  // 0  ->  0
  func test1() {
    let actualResult = filter.filter(text: "0") ?? ""
    let expectedResult = "0"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 1  ->  1
  func test2() {
    let actualResult = filter.filter(text: "1") ?? ""
    let expectedResult = "1"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // a0  ->  0
  func test3() {
    let actualResult = filter.filter(text: "a0") ?? ""
    let expectedResult = "0"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // a1a  ->  1
  func test4() {
    let actualResult = filter.filter(text: "a1a") ?? ""
    let expectedResult = "1"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // _1_  ->  1
  func test5() {
    let actualResult = filter.filter(text: "0") ?? ""
    let expectedResult = "0"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // aa  ->  ""
  func test6() {
    let actualResult = filter.filter(text: "aa") ?? ""
    let expectedResult = ""
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 0123456789  ->  0123456789
  func test7() {
    let actualResult = filter.filter(text: "0123456789") ?? ""
    let expectedResult = "0123456789"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // p0q1w2e3r4t5y6u7i8io9p  ->  0123456789
  func test8() {
    let actualResult = filter.filter(text: "p0q1w2e3r4t5y6u7i8io9p") ?? ""
    let expectedResult = "0123456789"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
}
