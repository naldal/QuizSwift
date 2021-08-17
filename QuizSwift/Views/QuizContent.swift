//
//  QuizContent.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/17.
//

import SwiftUI

struct QuizContent: View {
    var detailQuizes:[DetailQuizes]
    var body: some View {
        List {
            ForEach(0..<detailQuizes.count) { i in
                Text(detailQuizes[i].option1)
            }
        }
    }
}

struct QuizContent_Previews: PreviewProvider {
    static var previews: some View {
        QuizContent(detailQuizes: QuizData[0].perDayQuizes[0].quizOptions)
    }
}
