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
    @State private var quizEnded = false
    @ObservedObject var dailyQuiz: DayQuizes
    var day: Int
    @State var tappedDay: Int = 0
    
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            if !quizEnded {
                List {
                    ForEach(0..<dailyQuiz.perDayQuizes.count, id:\.self) { index in
                        let quizBundle = dailyQuiz.perDayQuizes[index]
                        Button(action: {
                            isPresent.toggle()
                            tappedDay = index
                        }, label: {
                            HStack(spacing:30) {
                                VStack(alignment:.leading) {
                                    Text("Quiz \(index+1).")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                        .padding(.bottom, 1)
                                    
                                    Text("\(quizBundle.dailyQuizesTitle)")
                                }
                                Spacer()
                                
                                Text("\(dailyQuiz.perDayQuizes[index].correctness) / \(dailyQuiz.perDayQuizes[index].quizOptions.count)")
                            }// Vstack texts
                        })//: button
                        .fullScreenCover(isPresented: $isPresent, onDismiss: {
                            DispatchQueue.main.async {
                                quizEnded = true
                            }
                        }) {
                            QuizRoundsContent(perDayQuizes: self.dailyQuiz.perDayQuizes[index])
                        }
                    }// end of forEach
                }//: List
                .padding(.top, 12)
                .navigationTitle("\(day+1) Day")
                .onAppear() {
                    print(QuizData[0].perDayQuizes)
                }
            } else {
                ResultQuizContent(quizEnded: $quizEnded, perdayQuizes: self.dailyQuiz.perDayQuizes[tappedDay], isPerfect: false)
            }
        }//: Zstack
        
    }
}
