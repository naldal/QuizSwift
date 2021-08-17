//
//  DailyModel.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/16.
//
import SwiftUI

struct DayQuizes: Identifiable {
    var id = UUID()
    var description: String
    var perDayQuizes:[PerDayQuizes]
}

struct PerDayQuizes: Identifiable  {
    var id = UUID()
    var dailyQuizesTitle: String
    var quiz:String
    var quizOptions:[DetailQuizes]
}

struct DetailQuizes {
    var option1:String
    var option2:String
    var correct:Bool = false
}
