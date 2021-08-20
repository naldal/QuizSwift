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
    var perDayQuizes: PerDayQuizes
    @State var currentRounds:Int = 0
    @State var pressedOption1 = false
    @State var pressedOption2 = false
    @State var option1IsCorrect = false
    @State var option2IsCorrect = false
    
    var quizTitle: String
    var quizQuestions: [DetailQuizes]
    var totalRounds:Int {
        return self.quizQuestions.count-1
    }
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.orange]), startPoint: .top, endPoint: .bottom).opacity(0.6)
                VStack(spacing: 20) {
                    Text("\(currentRounds+1) / \(totalRounds+1)")
                        .font(.caption)
                    
                    VStack(spacing: 10) {
                        
                        Text(quizTitle)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                            .padding(.horizontal, 12)
                            .padding(.bottom, 25)
                        
                        VStack(spacing:12) { //: Questions
                            Text(quizQuestions[currentRounds].question1)
                                .frame(minWidth: geometry.size.width, minHeight: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color(red: 245, green: 227, blue: 188))
                                .border(Color.gray, width: 1)
                            
                            if (option1IsCorrect || option2IsCorrect) {
                                if let answer1 = quizQuestions[currentRounds].describeOption1 {
                                    Text(answer1)
                                        .padding(.bottom, 6)
                                }
                            }
                            
                            if let q2 = quizQuestions[currentRounds].question2 {
                                Text(q2)
                                    .frame(minWidth: geometry.size.width, minHeight: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Color(red: 245, green: 227, blue: 188))
                                    .border(Color.gray, width: 1)
                                    
                            }
                            
                            if (option1IsCorrect || option2IsCorrect) {
                                if let answer2 = quizQuestions[currentRounds].describeOption2 {
                                    Text(answer2)
                                }
                            }
                        }
                        .padding(.bottom, 20)
                        
                        HStack {    //: Options Buttons
                            Button(action: {        //: Option1 Button
                                self.pressedOption1 = true
                                if pressedOption2 {
                                    pressedOption2 = false
                                }
                                if pressedOption1 {
                                    if quizQuestions[currentRounds].correctAnswer == 0 {
                                        perDayQuizes.increase()
                                        option1IsCorrect = true
                                        option2IsCorrect = false
                                    } else {
                                        option1IsCorrect = false
                                        option2IsCorrect = true
                                    }
                                }
                            }, label: {
                                Text(quizQuestions[currentRounds].option1)
                            })
                            .disabled(option1IsCorrect || option2IsCorrect ? true : false)
                            .frame(height: 40, alignment: .center)
                            .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                            .background( (!option1IsCorrect && !option2IsCorrect) ? Color.gray : option1IsCorrect ? Color.green : Color.red)
                            .cornerRadius(16)
                            .foregroundColor(.white)
                            .font(.subheadline)
                            
                            Button(action: {        //: Option2 Button
                                self.pressedOption2 = true
                                if pressedOption1 {
                                    pressedOption1 = false
                                }
                                if pressedOption2 {
                                    if quizQuestions[currentRounds].correctAnswer == 1 {
                                        perDayQuizes.increase()
                                        option2IsCorrect = true
                                        option1IsCorrect = false
                                    } else {
                                        option2IsCorrect = false
                                        option1IsCorrect = true
                                    }
                                }
                            }, label: {
                                Text(quizQuestions[currentRounds].option2)
                            })
                            .disabled(option1IsCorrect || option2IsCorrect ? true : false)
                            .frame(height: 40, alignment: .center)
                            .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                            .background( (!option1IsCorrect && !option2IsCorrect) ? Color.gray : option2IsCorrect ? Color.green : Color.red)
                            .cornerRadius(16)
                            .foregroundColor(.white)
                            .font(.subheadline)
                        } //: End Options Buttons
                    }
                    
                    VStack(spacing:3) { //: Continue Button
                        if (pressedOption1 && !option1IsCorrect) || (pressedOption2 && !option2IsCorrect) {
                            Text("틀렸습니다!")
                                .foregroundColor(Color.red)
                        } else if (pressedOption1 && option1IsCorrect) || (pressedOption2 && option2IsCorrect) {
                            Text("맞았습니다!")
                                .foregroundColor(Color.green)
                        }
                        
                        
                        Button(action: {
                            if totalRounds > currentRounds {
                                currentRounds += 1
                            } else if totalRounds == currentRounds {
                                presentationMode.wrappedValue.dismiss()
                            } // game is over
                            pressedOption1 = false
                            pressedOption2 = false
                            option1IsCorrect = false
                            option1IsCorrect = false
                            
                        }, label: {
                            Text("Continue")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundColor(Color(.white))
                        })
                        
                        .foregroundColor(.red)
                        .frame(width: 120, height: pressedOption1 || pressedOption2 ? 40 : 0, alignment: .center)
                        .background(Color.orange)
                        .disabled(pressedOption1 || pressedOption2 ? false : true)
                        .cornerRadius(40)
                    }//: VStack
                    .scaleEffect(pressedOption1 || pressedOption2 ? 1.2 : 1.0)
                    .animation(.easeIn(duration: 0.05))
                    .padding(.top, (pressedOption1 || pressedOption2) ? 12 : 0)
                    
                    Button(action: {        //: finish Button
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Return to Quiz Menu")
                    })
                    
                    
                    
                }//: VStack
                QuizTimer()
            }//: ZStack
            .onAppear() {
                perDayQuizes.initializeCorrect()
            }
        }//GeometryReader
        
    }
}



// MARK: - PREVIEWS
struct QuizContent_Previews: PreviewProvider {
    static var previews: some View {
        QuizContent(perDayQuizes: QuizData[0].perDayQuizes[0], quizTitle: QuizData[0].perDayQuizes[0].quiz,
                    quizQuestions: QuizData[0].perDayQuizes[0].quizOptions)
    }
}
