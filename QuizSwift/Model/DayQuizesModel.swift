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
    var title: String
    var description: String
    @Published var perDayQuizes:[PerDayQuizes]
    var cancellables = [AnyCancellable]()
    
    init(title:String, description:String, perDayQuizes:[PerDayQuizes]) {
        self.title = title
        self.description = description
        self.perDayQuizes = perDayQuizes
        self.perDayQuizes.forEach({
            let c = $0.objectWillChange.sink(receiveValue: {
                self.objectWillChange.send()
            })
            self.cancellables.append(c)
        })
    }
}

class PerDayQuizes: ObservableObject, Identifiable {
    var id = UUID()
    var dailyQuizesTitle: String = ""
    var quizOptions:[DetailQuizes] = []
    var perfect:Bool {
        if correctness == quizOptions.count {
            return true
        } else {
            return false
        }
    }
    @Published var correctness:Int = 0
    
    func increase() {
        objectWillChange.send()
        self.correctness += 1
    }
    
    func initializeCorrect() {
        objectWillChange.send()
        self.correctness = 0
    }
    
    init() {}
    
    init(dailyQuizesTitle: String, quizOptions:[DetailQuizes], correctness:Int) {
        self.dailyQuizesTitle = dailyQuizesTitle
        self.quizOptions = quizOptions
        self.correctness = correctness
    }
}

struct DetailQuizes {
    var quizTitle:String
    var question1:String
    var question2:String?
    var option1:String {
        if question2 != nil {
            return "Choose Option1"
        } else {
            return "True"
        }
    }
    var option2:String {
        if question2 != nil {
            return "Choose Option2"
        } else {
            return "False"
        }
    }
    var describeOption1:String?
    var describeOption2:String?
    var correctAnswer:Int
    
    init(quizTitle:String, question1:String, question2:String?, describeOption1:String?, describeOption2:String?, correctAnswer:Int) {
        self.quizTitle = quizTitle
        self.question1 = question1
        self.question2 = question2
        self.describeOption1 = describeOption1
        self.describeOption2 = describeOption2
        self.correctAnswer = correctAnswer
    }
}
