//
//  CharacterSetTextInputFilter.swift
//  TextInputFilter
//
//  Created by branderstudio on 20.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class CharacterSetTextInputFilter: TextInputFilter {
  
  // Public variables
  
  public var characterSet: CharacterSet
  
  // MARK: - Life cycle
  
  public init(characterSet: CharacterSet) {
    self.characterSet = characterSet
  }
  
  // MARK: - TextInputFilter
  
  open func filter(text: String?) -> String? {
    guard let filteringText = text, !filteringText.isEmpty else { return text }
    let filteredText = filteringText.filter { (character) -> Bool in
      guard let scalar = String(character).unicodeScalars.first else { return false }
      return characterSet.contains(scalar)
    }
    return filteredText
  }
}
