//
//  DayQuizesContent.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/17.
//

import SwiftUI

struct DayQuizesContent: View {
    // MARK: - PROPERTIEES
    @State private var isPresent = false
    var dailyQuiz: DayQuizes
    var day: Int
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            List {
                ForEach(0..<dailyQuiz.perDayQuizes.count) { index in
                    Button(action: {
                        isPresent.toggle()
                        print(dailyQuiz)
                    }, label: {
                        VStack(alignment:.leading) {
                            Text("Quiz \(index+1).")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(.bottom, 1)
                            Text("\(dailyQuiz.perDayQuizes[index].dailyQuizesTitle)")
                        }// Vstack texts
                    })//: button
                    .fullScreenCover(isPresented: $isPresent, content: {
                        QuizRoundsContent(quizes: dailyQuiz.perDayQuizes[index])
                    })
                }
                
            }//: List
            .padding(.top, 12)
            .navigationTitle("\(day+1) Day")
        }//: Zstack
        
        
    }
}

// MARK: - PREVIEWS
struct DayQuizesContent_Previews: PreviewProvider {
    static var previews: some View {
        DayQuizesContent(dailyQuiz: QuizData[0], day: 0)
    }
}
