//
//  Questions.swift
//  11quiz
//
//  Created by Raphael Thome  on 8/16/17.
//  Copyright © 2017 Raphael Thome . All rights reserved.
//

import Foundation

class Questions {
    
    var list = [Question]()
    
    init() {
        
        // Creating a quiz item and appending it to the list
        let item = Question(text: "The first W.W.D.C. conference was held in 1983, in Monterey, California.", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "During W.W.D.C. in 1998, OpenStep was formerly renamed to Cocoa. During its development, it's code name was Green Box.", correctAnswer: false))
        
        list.append(Question(text: "Steve Jobs (mostly) famously gave W.W.D.C.’s opening keynotes until he passed away. Fans, media and developers alike coined a terms for a Steve Job’s lead keynotes, that was called SteveNotes.", correctAnswer: true))
        
        list.append(Question(text: "Recently, W.W.D.C. had been housed in the historic Moscone West in San Francisco — the first year it was held at the San Jose Convention Center was 1981!", correctAnswer: false))
        
        list.append(Question(text: "During its development in 2005, Steve Jobs said he either could “shrink the mac, which would be an epic feat of engineering, or enlarge the (blank)” — he referred to the iPad", correctAnswer: false))
        
        list.append(Question(text: "New versions of iOS required users and developers alike to update to it via iTunes,the air updates where enabled in iOS 5", correctAnswer: true))
        
        list.append(Question(text: "iOS 3.2 was the version Apple introduced the name \"iOs\"", correctAnswer: true))
        
        list.append(Question(text: "There were six co-founders that founded Apple.", correctAnswer: false))
        
        list.append(Question(text: "Apple is credited with creating things like the iPod, iPad, and the line of Macintosh computers.", correctAnswer: true))
        
        list.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
        
        list.append(Question(text: "The original iPod came out in 2000.", correctAnswer: false))
        
        
    }
    
}
