//
//  DayQuizesRow.swift
//  QuizSwift
//
//  Created by 송하민 on 2021/08/17.
//

import SwiftUI

struct DayQuizesRow: View {
    // MARK: - PROPERTIEES
    
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment:.leading) {
            
            Text("Quiz 1.")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.bottom, 1)
            Text("아무거나")
            
        }.frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
    }
}

// MARK: - PREVIEWS
struct DayQuizesRow_Previews: PreviewProvider {
    static var previews: some View {
        DayQuizesRow()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
