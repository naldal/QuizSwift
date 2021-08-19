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
    var perDayQuizes: PerDayQuizes
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Group {
                QuizTimer()
                QuizContent(
                    perDayQuizes: self.perDayQuizes,
                    quizTitle: perDayQuizes.quiz,
                    quizQuestions: perDayQuizes.quizOptions
                )
                .opacity(quizStart ? 1 : 0)
            }
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
        QuizRoundsContent(perDayQuizes: QuizData[0].perDayQuizes[0])
    }
}
