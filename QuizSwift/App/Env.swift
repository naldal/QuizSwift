//
//  Env.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/19.
//

import Foundation

class Env: ObservableObject {
    @Published var scoreArray:[[Int]] {
        get {
            return doubleArray
        }
    }
    var doubleArray:[[Int]] {
        var result:[[Int]] = []
        for i in 0..<QuizData.count {
            result.append(Array(repeating: 0, count: QuizData[i].perDayQuizes[i].quizOptions.count))
        }
        return result
    }
    
    
}

