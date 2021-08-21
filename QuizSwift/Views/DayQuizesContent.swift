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
                                    .frame(width:50)
                                    .foregroundColor(.white)
                                    .background(
                                        RoundedRectangle(cornerRadius: 30.0,
                                                         style: .continuous)
                                            .fill(dailyQuiz.perDayQuizes[index].perfect ? Color.green : Color.blue)
                                    )
                                    
                            }// Vstack texts
                        })//: button
                        .hoverEffect()
                        .animation(.easeIn(duration: 0.4))
                        .fullScreenCover(isPresented: $isPresent, onDismiss: {
                            DispatchQueue.main.async {
                                quizEnded = true
                            }
                        }) {
                            QuizRoundsContent(perDayQuizes: self.dailyQuiz.perDayQuizes[tappedDay])
                        }
                    }// end of forEach
                }//: List
                .padding(.top, 12)
                .navigationTitle("\(day+1) Day")

            } else {
                ResultQuizContent(quizEnded: $quizEnded, perdayQuizes: self.dailyQuiz.perDayQuizes[tappedDay])
            }
        }//: Zstack
        
    }
}

// MARK: - PREVIEW
struct DayQuizesContent_Previews: PreviewProvider {
    static var previews: some View {
        DayQuizesContent(dailyQuiz: QuizData[0], day: 1)
    }
}
