//
//  RegexTextInputFilter.swift
//  TextInputFilter
//
//  Created by branderstudio on 20.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class RegexTextInputFilter: TextInputFilter {
  
  // MARK: - Public variables
  
  open var allowedSymbolsRegex: String = ""
  
  // MARK: - Life cycle
  
  public init(allowedSymbolsRegex: String) {
    self.allowedSymbolsRegex = allowedSymbolsRegex
  }
  
  // MARK: - TextInputFilter
  
  open func filter(text: String?) -> String? {
    guard let filteringText = text, !filteringText.isEmpty else { return text }
    let regexPredicate = NSPredicate(format: "SELF MATCHES %@", allowedSymbolsRegex)
    let filteredCharacters = filteringText.filter { (character) -> Bool in
      regexPredicate.evaluate(with: String(character))
    }
    return String(filteredCharacters)
  }
}
