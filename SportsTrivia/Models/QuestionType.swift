//
//  QuestionType.swift
//  SportsTrivia
//
//  Created by Luis Vega on 1/28/18.
//  Copyright © 2018 Vega. All rights reserved.
//

import Foundation

protocol Question {
    var question: String { get }
    var answer: Any { get }
    var choice01: String { get }
    var choice02: String { get }
    var choice03: String { get }
    var choice04: String { get }
    var choicesArray: [String] { get }
}

