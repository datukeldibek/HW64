//
//  SecondHrizontalSlider.swift
//  HW64
//
//  Created by Jarae on 17/4/23.
//

import SwiftUI
struct SecondHorizontalSlider: View {
    var body: some View {
        VStack(spacing: 10) {
            VStack (alignment: .leading){
                CustomImage(image: Image("1"), width: 150, height: 150)
                CustomText(text: "Tony Roma’s", size: 16, weight: .bold)
                CustomText(text: "Ribs & Steaks\nDelivery: FREE • Minimum: $20", size: 10, weight: .light)
            }
            
            HStack {
                CustomImage(image: Image(systemName: "star.fill"), width: 10, height: 10)
                CustomText(text: "4,5 *", size: 12, weight: .bold)
                CustomImage(image: Image(systemName: "clock"), width: 10, height: 10)
                CustomText(text: "35 min", size: 12, weight: .bold)
            }
        }
        .frame(width: 160, height: 250, alignment: .center)
        .padding(.horizontal)
        //.background(Color.pink)
        .cornerRadius(16)
    }
}
