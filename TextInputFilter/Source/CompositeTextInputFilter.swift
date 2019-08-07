//
//  CompositeTextInputFilter.swift
//  TextInputFilter
//
//  Created by branderstudio on 8/7/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class CompositeTextInputFilter: TextInputFilter {
  
  open var filters: [TextInputFilter]
  
  public init(filters: [TextInputFilter] = []) {
    self.filters = filters
  }
  
  open func filter(text: String?) -> String? {
    guard let filteringText = text, !filteringText.isEmpty else { return text }
    var filteredText = filteringText
    for filter in filters {
      filteredText = filter.filter(text: filteredText) ?? ""
    }
    return filteredText.isEmpty ? nil : filteredText
  }
}
