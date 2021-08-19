//
//  ContentView.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/16.
//

import SwiftUI

struct MainContent: View {
    // MARK: - PROPERTIEES
    var daily:[DayQuizes]
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(0..<daily.count) { day in
                        NavigationLink(
                            destination: DayQuizesContent(dailyQuiz: self.daily[day], day: day)) {
                            MainQuizRow(daily: daily[day], index: day)
                        }
                    }
                }
                .padding(.top, 12)
                .navigationTitle("Daily Quiz")
            }//: navigation view
        }//: ZStack
        .ignoresSafeArea()
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContent(daily: QuizData)
            .previewDevice("iPhone 11 Pro")
    }
}
