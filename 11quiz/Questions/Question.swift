//
//  Question.swift
//  11quiz
//
//  Created by Raphael Thome  on 8/16/17.
//  Copyright © 2017 Raphael Thome . All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        
        questionText = text
        answer = correctAnswer
        
    }
    
}
