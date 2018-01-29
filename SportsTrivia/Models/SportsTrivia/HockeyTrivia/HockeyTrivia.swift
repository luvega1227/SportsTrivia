//
//  HockeyTrivia.swift
//  SportsTrivia
//
//  Created by Luis Vega on 1/28/18.
//  Copyright © 2018 Vega. All rights reserved.
//

import Foundation

class HockeyQuiz: Quiz {
    
    var questionsArray: [Question]
    
    init(withNumberOfQuestions: Int) {
        
        questionsArray = [Question]()
        
        do {
            
            let pListConversion = try PlistConverter.arrayFromFile(resource: "HockeyQuestions", ofType: "plist")
            questionsArray = QuestionsUnarchiver.questionsFromArray(array: pListConversion).shuffle
            
        } catch TriviaQuestionError.pListConversionError{
            
            print(TriviaQuestionError.pListConversionError.rawValue)
            
        } catch let error {
            
            print(error.localizedDescription)
            
        }
    }
    
}

