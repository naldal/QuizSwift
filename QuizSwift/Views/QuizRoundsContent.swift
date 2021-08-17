//
//  QuizContent.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/17.
//

import SwiftUI

struct QuizRoundsContent: View {
    var quizes: [DetailQuizes]
    var body: some View {
        ZStack {
            QuizTimer()
            QuizContent(detailQuizes: quizes)
        }
    }
    
}

struct QuizRoundsContent_Previews: PreviewProvider {
    static var previews: some View {
        QuizRoundsContent(quizes: QuizData[0].perDayQuizes[0].quizOptions)
    }
}
