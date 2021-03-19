//
//  LocalizationHelper.swift
//  NetworkInfrastructure
//
//  Created by Bheem Singh on 11/3/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import Foundation

enum Language: String {
  case english = "en"
  case spanish = "es"
}

struct LocalizationHelper {
  
  static let defaultLanguage: Language = .english
  
  static func getCurrentLanguageCode() -> String {
    guard let languageCode = Locale.current.languageCode else {
      return defaultLanguage.rawValue
    }
    return Language.init(rawValue: languageCode)?.rawValue ?? defaultLanguage.rawValue
  }
  
}
