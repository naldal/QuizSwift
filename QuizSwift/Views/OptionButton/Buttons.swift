//
//  Buttons.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/21.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
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
                    }
                }
            }, label: {
                Text(quizQuestions[currentRounds].option1)
            })
            .disabled(option1IsCorrect || option2IsCorrect ? true : false)
            .frame(height: 40, alignment: .center)
            .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
            .background(pressedOption1 ? Color.green : Color.gray)
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
                    }
                }
            }, label: {
                Text(quizQuestions[currentRounds].option2)
            })
            .disabled(option1IsCorrect || option2IsCorrect ? true : false)
            .frame(height: 40, alignment: .center)
            .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
            .background(Color.gray)
//                            .background(!(option1IsCorrect && option2IsCorrect) ? Color.gray : (option2IsCorrect) ? Color.green : Color.red)
            .cornerRadius(16)
            .foregroundColor(.white)
            .font(.subheadline)
        } //: End Options Buttons
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
