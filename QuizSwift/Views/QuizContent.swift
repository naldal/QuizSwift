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
    var quizTitle: String
    var quizQuestions: [DetailQuizes]
    var totalRounds:Int {
        return self.quizQuestions.count-1
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color.white, Color(red: 230, green: 230, blue: 230)]), startPoint: .top, endPoint: .trailing)
            VStack {
                Text(quizTitle)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .padding(.horizontal, 12)
                    .padding(.bottom, 70)
                
                VStack(spacing: 20) {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text(quizQuestions[currentRounds].option1)
                    })
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .font(.title2)
                    
                    Button(action: {}, label: {
                        Text(quizQuestions[currentRounds].option2)
                    })
                    
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .font(.title2)
                }
                
                
                HStack(spacing: 12) {
                    
                    Button(action: {
                        if totalRounds > currentRounds {
                            currentRounds += 1
                        } else if totalRounds == currentRounds {
                            presentationMode.wrappedValue.dismiss()
                        }
                    }, label: {
                        Text("Continuous")
                            .font(.title2)
                            .foregroundColor(Color(.black))
                    })
                    .foregroundColor(.red)
                    .frame(minWidth: 80, maxWidth: 150, minHeight: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(
                        Capsule(style: .continuous)
                            .stroke(lineWidth: 2)
                    )
                    
                }
                .padding(.vertical, 50)
                
                .animation(.easeInOut(duration:1.5))
            }//: VStack
            QuizTimer()
        }//: ZStack
        
    }
}

// MARK: - PREVIEWS
struct QuizContent_Previews: PreviewProvider {
    static var previews: some View {
        QuizContent(quizTitle: QuizData[0].perDayQuizes[0].quiz, quizQuestions: QuizData[0].perDayQuizes[0].quizOptions)
    }
}
