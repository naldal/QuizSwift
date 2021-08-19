//
//  QuizContent.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/17.
//

import SwiftUI

struct QuizContent: View {
    // MARK: - PROPERTIEES
    @Environment(\.presentationMode) var presentationMode
    
    @State var currentRounds:Int = 0
    @State var pressedOption1 = false
    @State var pressedOption2 = false
    
    var quizTitle: String
    var quizQuestions: [DetailQuizes]
    var totalRounds:Int {
        return self.quizQuestions.count-1
    }
    @ObservedObject var perDayQuizes: PerDayQuizes
    
    
    // MARK: - BODY
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.orange]), startPoint: .top, endPoint: .bottom).opacity(0.6)
                VStack(spacing: 20) {
                    Text("\(currentRounds+1) / \(totalRounds+1)")
                        .font(.caption)
                    
                    VStack(spacing: 20) {Text(quizTitle)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .padding(.horizontal, 12)
                        .padding(.bottom, 50)
                        
                        Button(action: {
                            self.pressedOption1 = true
                            if pressedOption2 {
                                pressedOption2 = false
                            }
                        }, label: {
                            Text(quizQuestions[currentRounds].option1)
                        })//: Option1 Button
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.black)
                        .cornerRadius(60)
                        .foregroundColor(.white)
                        .font(.title2)
                        .overlay(
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(Color.white, lineWidth: pressedOption1 ? 10 : 0)
                        )
                        Button(action: {
                            self.pressedOption2 = true
                            if pressedOption1 {
                                pressedOption1 = false
                            }
                        }, label: {
                            Text(quizQuestions[currentRounds].option2)
                        })//: Option2 Button
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.black)
                        .cornerRadius(60)
                        .foregroundColor(.white)
                        .font(.title2)
                        .overlay(
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(Color.white, lineWidth: pressedOption2 ? 10 : 0)
                        )
                    }
                    
                    HStack(spacing: 12) {
                        Button(action: {
                            if pressedOption1 {
                                if quizQuestions[currentRounds].correctAnswer == 0 {
                                    perDayQuizes.increase()
                                }
                            }
                            if pressedOption2 {
                                if quizQuestions[currentRounds].correctAnswer == 1 {
                                    perDayQuizes.increase()
                                }
                            }
                            if totalRounds > currentRounds {
                                currentRounds += 1
                            } else if totalRounds == currentRounds {
                                presentationMode.wrappedValue.dismiss()
                            } // game is over
                            pressedOption1 = false
                            pressedOption2 = false
                        }, label: {
                            Text("Continuous")
                                .font(.title2)
                                .foregroundColor(Color(.black))
                        })
                        .foregroundColor(.red)
                        .frame(minWidth: 80, maxWidth: 150, minHeight: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .disabled(!pressedOption1 && !pressedOption2 ? true : false )
                        .background(Color.orange)
                        .cornerRadius(40)
                        
                        
                    }
                    .padding(.vertical, 50)
                    .animation(.easeInOut(duration:1.5))
                    
                }//: VStack
                QuizTimer()
            }//: ZStack
        }
        
    }
}

// MARK: - PREVIEWS
struct QuizContent_Previews: PreviewProvider {
    static var previews: some View {
        QuizContent(quizTitle: QuizData[0].perDayQuizes[0].quiz,
                    quizQuestions: QuizData[0].perDayQuizes[0].quizOptions,
                    perDayQuizes: QuizData[0].perDayQuizes[0])
    }
}
