//
//  a_zOnlyCharactersSetTextInputFilterTests.swift
//  TextInputFilterTests
//
//  Created by branderstudio on 20.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import XCTest
@testable import TextInputFilter

class a_zOnlyCharactersSetTextInputFilterTests: XCTestCase {

  private let filter = CharacterSetTextInputFilter(characterSet: CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz"))
  
  // 0  ->  ""
  func test1() {
    let actualResult = filter.filter(text: "0") ?? ""
    let expectedResult = ""
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 0a  ->  a
  func test2() {
    let actualResult = filter.filter(text: "0a") ?? ""
    let expectedResult = "a"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // a  ->  a
  func test3() {
    let actualResult = filter.filter(text: "a") ?? ""
    let expectedResult = "a"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // z  ->  z
  func test4() {
    let actualResult = filter.filter(text: "z") ?? ""
    let expectedResult = "z"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // abcdefghijklmnopqrstuvwxyz  ->  abcdefghijklmnopqrstuvwxyz
  func test5() {
    let actualResult = filter.filter(text: "abcdefghijklmnopqrstuvwxyz") ?? ""
    let expectedResult = "abcdefghijklmnopqrstuvwxyz"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 0p1q2w3e4r5t6y7u8i9o  ->  pqwertyuio
  func test6() {
    let actualResult = filter.filter(text: "0p1q2w3e4r5t6y7u8i9o") ?? ""
    let expectedResult = "pqwertyuio"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // A  ->  ""
  func test7() {
    let actualResult = filter.filter(text: "A") ?? ""
    let expectedResult = ""
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // Z  ->  ""
  func test8() {
    let actualResult = filter.filter(text: "Z") ?? ""
    let expectedResult = ""
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // aAzZ  ->  az
  func test9() {
    let actualResult = filter.filter(text: "aAzZ") ?? ""
    let expectedResult = "az"
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
}
