//
//  Timer.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/17.
//

import SwiftUI

struct QuizTimer: View {
    // MARK: - PROPERTIEES
    @Environment(\.presentationMode) var presentationMode
    @State var startQuiz = false
    @State var start = false
    @State var to: CGFloat = 30
    @State var count = 30
    @State var time = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .trim(from: 0, to: 1)
                    .stroke(
                        self.count > 10 ? Color.blue : Color.red,
                        style: StrokeStyle(lineWidth: startQuiz ? 6 : 30, lineCap: .round)
                    )
                
                Circle()
                    .trim(from: self.to, to: 1)
                    .stroke(Color.white, style: StrokeStyle(lineWidth: startQuiz ? 8 : 30, lineCap: .square))
                    .rotationEffect(.init(degrees: 270))
                
                VStack {
                    Text("\(self.count)")
                        .font(
                            .system(size: startQuiz ? 30 : 40)
                        )
                        .fontWeight(.bold)
                        
                }//: VStack
                
            }//: ZStack
            .frame(
                width: !startQuiz ? geometry.size.width/2 : geometry.size.width/8,
                height: !startQuiz ? geometry.size.height/2 : geometry.size.height/8,
                alignment: .center
            )
            .position(
                x: !startQuiz ? geometry.size.width/2 : geometry.size.width - geometry.size.width/10,
                y: !startQuiz ? geometry.size.height/2 : geometry.safeAreaInsets.top
            )
            .opacity(start ? 1 : 0)
            .animation(.easeInOut(duration:0.5))
        }//: Geometry
        
        
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline:.now() + 0.3) {
                start = true
                startQuiz = true
            }
        })
        
        .onReceive(self.time) { _ in
            if self.start {
                if self.count > 0 {
                    self.count -= 1
                    withAnimation(.default) {
                        self.to = CGFloat(self.count) / 10
                    }
                }
                else {
                    self.start.toggle()
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

// MARK: - PREVIEWS
struct QuizTimer_Previews: PreviewProvider {
    static var previews: some View {
        QuizTimer()
    }
}
