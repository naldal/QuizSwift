//
//  QuizContent.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/17.
//

import SwiftUI

struct QuizRoundsContent: View {
    // MARK: - PROPERTIEES
    @State private var quizStart:Bool = false
    var quizes: PerDayQuizes
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            QuizTimer()
            QuizContent(quizTitle: quizes.quiz, quizQuestions: quizes.quizOptions)
                .opacity(quizStart ? 1 : 0)
        }
        .onAppear(perform: {
            withAnimation(Animation.spring().delay(0.9)) {
                 quizStart = true
            }
         })
    }
    
}

// MARK: - PREVIEWS
struct QuizRoundsContent_Previews: PreviewProvider {
    static var previews: some View {
        QuizRoundsContent(quizes: QuizData[0].perDayQuizes[0])
    }
}
