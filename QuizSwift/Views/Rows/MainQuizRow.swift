//
//  MainQuizRow.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/16.
//

import SwiftUI

struct MainQuizRow: View {
    // MARK: - PROPERTIEES
    var daily:DayQuizes
    var index:Int
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(alignment:.leading) {
                Text("\(index+1) Day")
                    .font(.title)
                    .fontWeight(.heavy)
                Text("\(daily.description)")
                    .lineLimit(2)
                    .font(.subheadline)
            }
            .padding(.vertical, 13)
            .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        }
    }
}

// MARK: - PREVIEWS
struct MainQuizRow_Previews: PreviewProvider {
    static var previews: some View {
        MainQuizRow(daily: QuizData[0], index: 0)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
