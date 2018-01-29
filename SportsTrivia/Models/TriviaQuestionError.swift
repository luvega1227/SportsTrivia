//
//  TriviaQuestionError.swift
//  SportsTrivia
//
//  Created by Luis Vega on 1/28/18.
//  Copyright © 2018 Vega. All rights reserved.
//

import Foundation

enum TriviaQuestionError: String, Error {
    case invalidResource
    case pListConversionError
    case invalidKey
}
