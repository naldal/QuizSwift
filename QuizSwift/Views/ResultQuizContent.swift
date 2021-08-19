//
//  ResultQuizContent.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/19.
//

import SwiftUI

struct ResultQuizContent: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var quizEnded:Bool
    @ObservedObject var perdayQuizes: PerDayQuizes
    @State var isAnimating:Bool = false
    @State var isPerfect:Bool
    
    func figureIsPerfect() {
        if perdayQuizes.correctness == perdayQuizes.quizOptions.count {
            self.isPerfect = true
        } else {
            self.isPerfect = false
        }
    }
    
    var foreverAnimation: Animation {
        Animation.linear(duration: 5.0)
            .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        ZStack{
            GeometryReader {geo in
                AngularGradient(gradient: Gradient(colors: [Color.yellow, Color.white ,Color.yellow, Color.white, Color.yellow, Color.white, Color.yellow, Color.white, Color.yellow, Color.white]), center: .center)
                    .rotationEffect(Angle(degrees: self.isAnimating ? 360 : 0.0))
                    .animation(self.isAnimating ? foreverAnimation : .default)
                    .frame(width: geo.size.width*2.2, height: geo.size.width*2.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .position(CGPoint(x: geo.size.width/2, y: geo.size.height/2))
            }
            
            VStack {
                Text("Congratulation!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
                    .scaleEffect(!isAnimating ? 1.0 : 1.3)
                    .shadow(radius: 100)
                
                Image("trophy_Image")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 280, height: 280, alignment: .center)
                    .scaleEffect(!isAnimating ? 0.3 : 1.2)
                
                Text("Your Score is : \(perdayQuizes.correctness) / \(perdayQuizes.quizOptions.count)")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                
                if isPerfect {
                    Text("Perfect!")
                        .font(.title)
                        .foregroundColor(.red)
                } else {
                    Text("You can do even better next Time..")
                }
                
                Button(action: {
                    quizEnded = false
                    isAnimating = false
                }) {
                    Text("Back To List")
                        .fontWeight(.bold)
                        .foregroundColor(Color(.white))
                        .padding()
                }
                .background(RoundedRectangle(cornerRadius: 10   , style: .continuous).fill(Color.orange))
                .padding(.vertical, 29)
                
            }.onAppear(perform: {
                withAnimation(.easeIn(duration: 0.3)){
                    isAnimating = true
                }
            })
        }
        .navigationBarHidden(true)
        .ignoresSafeArea()
        .onAppear() {
            figureIsPerfect()
        }
    }
}

struct ResultQuizContent_Previews: PreviewProvider {
    static var previews: some View {
        ResultQuizContent(quizEnded: .constant(true), perdayQuizes: QuizData[0].perDayQuizes[0], isPerfect: true)
    }
}
