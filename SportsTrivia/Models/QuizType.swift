//
//  QuizType.swift
//  SportsTrivia
//
//  Created by Luis Vega on 1/28/18.
//  Copyright © 2018 Vega. All rights reserved.
//

import Foundation

enum QuizType {
    
    case football
    case basketball
    case baseball
    case hockey
    case soccer
    
    func generateQuiz(_ questions: Int) -> Quiz {
        
        switch self {
        case .football: return FootballQuiz(withNumberOfQuestions: questions)
        case .basketball: return BasketballQuiz(withNumberOfQuestions: questions)
        case .baseball: return BaseballQuiz(withNumberOfQuestions: questions)
        case .hockey: return HockeyQuiz(withNumberOfQuestions: questions)
        case .soccer: return SoccerQuiz(withNumberOfQuestions: questions)
        }
    }
}


