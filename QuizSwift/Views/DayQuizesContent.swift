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
    @ObservedObject var dailyQuiz: DayQuizes
    var day: Int
    
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            List {
                ForEach(0..<dailyQuiz.perDayQuizes.count) { index in
                    Button(action: {
                        isPresent.toggle()
                    }, label: {
                        HStack(spacing:30) {
                            VStack(alignment:.leading) {
                                Text("Quiz \(index+1).")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding(.bottom, 1)
                                
                                Text("\(dailyQuiz.perDayQuizes[index].dailyQuizesTitle)")
                            }
                            Spacer()
                            Text("\(dailyQuiz.perDayQuizes[index].correctness) / \(dailyQuiz.perDayQuizes[index].quizOptions.count)")
                        }// Vstack texts
                    })//: button
                    .fullScreenCover(isPresented: $isPresent) {
                        QuizRoundsContent(perDayQuizes: self.dailyQuiz.perDayQuizes[index])
                    }
                }// end of forEach
                
            }//: List
            .padding(.top, 12)
            .navigationTitle("\(day+1) Day")
        }//: Zstack

    }
}
