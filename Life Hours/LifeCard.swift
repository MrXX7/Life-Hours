//
//  LifeCard.swift
//  Life Hours
//
//  Created by Oncu Can on 23.01.2023.
//

import SwiftUI

struct LifeCard: View {
    
    let cardText: String
    let cardTime: String
    let cardColor: Color
    let textColor: Color
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(cardColor)
                    .frame(width: 90, height: 120)
                VStack {
                    Text(cardText)
                        .font(.title3)
                    Text(cardTime)
                        .font(.title2)
                        .bold()
                }
                .foregroundColor(textColor)
            }
        }
    }
}

struct LifeCard_Previews: PreviewProvider {
    static var previews: some View {
        LifeCard(cardText: "A", cardTime: "HOURS", cardColor: .accentColor, textColor: .white)
    }
}
