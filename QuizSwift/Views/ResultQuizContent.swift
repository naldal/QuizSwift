//
//  ResultQuizContent.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/19.
//

import SwiftUI

enum ScoreState {
    case Perfect
    case Normal
    case Fool
}

struct ResultQuizContent: View {
    // MARK: - PROPERTIEES
    @Environment(\.presentationMode) var presentationMode
    @Binding var quizEnded:Bool
    @ObservedObject var perdayQuizes: PerDayQuizes
    @State var isAnimating:Bool = false
    @State var score:Int = 0
    @State var questionCount = 0
    @State var scoreState:ScoreState
    
    func figureScoreOut() {
        isAnimating = true
        score = perdayQuizes.correctness
        questionCount = perdayQuizes.quizOptions.count
    
        switch Double(questionCount)/Double(score) {
        case .infinity:
            scoreState = ScoreState.Fool
            isAnimating = false
        case ..<1:
            scoreState = ScoreState.Normal
            isAnimating = false
        case 1.0:
            scoreState = ScoreState.Perfect
        default:
            break
        }
    }
    
    var foreverAnimation: Animation {
        Animation.linear(duration: 5.0)
            .repeatForever(autoreverses: false)
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack{
            GeometryReader { geo in
                
                if scoreState == .Perfect {
                    AngularGradient(gradient: Gradient(colors: [Color.yellow, Color.white, Color.yellow, Color.white, Color.yellow, Color.white, Color.yellow, Color.white, Color.yellow, Color.white]), center: .center)
                        .frame(width: geo.size.width*2.2, height: geo.size.width*2.2, alignment: .center)
                        .position(CGPoint(x: geo.size.width/2, y: geo.size.height/2))
                        .rotationEffect(Angle(degrees: self.isAnimating ? 360 : 0.0))
                        .animation(self.isAnimating ? foreverAnimation : .default)
                }
                
                else if scoreState == .Normal {
                    LinearGradient(gradient: Gradient(colors: [Color.white, Color.orange]), startPoint: .top, endPoint: .bottom).opacity(0.6)

                } else {
                    LinearGradient(gradient: Gradient(colors: [Color.white, Color.gray]), startPoint: .top, endPoint: .bottom).opacity(0.6)
                }
            }
            
            VStack {
                Text("FINISHED!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(scoreState == .Fool ? .gray : .orange)
                    .scaleEffect(!isAnimating ? 1.0 : 1.3)
                    .shadow(radius: 100)
                
                if scoreState == .Perfect {
                    Image("trophy_Image")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280, height: 280, alignment: .center)
                        .scaleEffect(!isAnimating ? 0.3 : 1.2)
                } else if scoreState == .Normal {
                    Image("thumbUp")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280, height: 280, alignment: .center)
                        .scaleEffect(!isAnimating ? 0.3 : 1.2)
                }
                
                Text("Your Score is : \(score) / \(questionCount)")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                
                if scoreState == .Perfect {
                    Text("Perfect!")
                        .font(.title)
                        .foregroundColor(.red)
                } else if scoreState == .Normal {
                    Text("좀 더 잘할 수 있어요!")
                } else if scoreState == .Fool {
                    Text("좀 더 노력이 필요해요")
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
                .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color.orange))
                .padding(.vertical, 29)
            }
        }
        .navigationBarHidden(true)
        .ignoresSafeArea()
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now()+3) {
                withAnimation(.easeIn(duration: 0.3)){
                    figureScoreOut()
                }
            }
            
        }
    }
}

// MARK: - PREVIEW
struct ResultQuizContent_Previews: PreviewProvider {
    static var previews: some View {
        ResultQuizContent(quizEnded: .constant(true), perdayQuizes: QuizData[0].perDayQuizes[0], scoreState: .Perfect )
    }
}
