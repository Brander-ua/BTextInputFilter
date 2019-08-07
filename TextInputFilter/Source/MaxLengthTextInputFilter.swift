//
//  MaxLengthTextInputFilter.swift
//  TextInputFilter
//
//  Created by branderstudio on 8/7/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class MaxLengthTextInputFilter: TextInputFilter {
  
  // Public variables
  
  public var maxLength: Int
  
  // MARK: - Life cycle
  
  public init(maxLength: Int) {
    self.maxLength = maxLength
  }
  
  // MARK: - TextInputFilter
  
  open func filter(text: String?) -> String? {
    guard let filteringText = text, !filteringText.isEmpty else { return text }
    if filteringText.count <= maxLength {
      return filteringText
    } else {
      return filteringText.leftSlice(length: maxLength)
    }
  }
}

private extension String {
  
  func leftSlice(length: Int) -> String {
    guard length > 0, length <= self.count else { return self }
    let endIndex = self.index(startIndex, offsetBy: length)
    return String(self[startIndex..<endIndex])
  }
}
