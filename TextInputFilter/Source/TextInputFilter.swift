//
//  TextInputFilter.swift
//  TextInputFilter
//
//  Created by branderstudio on 20.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public protocol TextInputFilter {
  func filter(text: String?) -> String?
}
