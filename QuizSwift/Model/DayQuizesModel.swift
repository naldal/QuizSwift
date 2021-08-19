//
//  DailyModel.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/16.
//
import SwiftUI
import Combine

//class DayQuizes: ObservableObject, Identifiable {
//    var id = UUID()
//    var description: String
//    @Published var perDayQuizes:[PerDayQuizes]
//
//    init(description:String, perDayQuizes:[PerDayQuizes]) {
//        self.description = description
//        self.perDayQuizes = perDayQuizes
//    }
//}

class DayQuizes: ObservableObject, Identifiable {
    var id = UUID()
    var description: String
    @Published var perDayQuizes:[PerDayQuizes]
    var cancellables = [AnyCancellable]()
    
    init(description:String, perDayQuizes:[PerDayQuizes]) {
        self.description = description
        self.perDayQuizes = perDayQuizes
        self.perDayQuizes.forEach({
            let c = $0.objectWillChange.sink(receiveValue: { self.objectWillChange.send() })
            self.cancellables.append(c)
        })
    }
}

class PerDayQuizes: ObservableObject, Identifiable {
    var id = UUID()
    var dailyQuizesTitle: String = ""
    var quiz:String = ""
    var quizOptions:[DetailQuizes] = []
    @Published var correctness:Int = 0
    
    func increase() {
        objectWillChange.send()
        self.correctness += 1
    }
    
    init() {}
    
    init(dailyQuizesTitle: String, quiz:String, quizOptions:[DetailQuizes], correctness:Int) {
        self.dailyQuizesTitle = dailyQuizesTitle
        self.quiz = quiz
        self.quizOptions = quizOptions
        self.correctness = correctness
    }
}

struct DetailQuizes {
    var option1:String
    var option2:String
    var hint:String?
    var correctAnswer:Int
    
    init(option1:String, option2:String, correctAnswer:Int) {
        self.option1 = option1
        self.option2 = option2
        self.correctAnswer = correctAnswer
    }
}
