//
//  MenuPart.swift
//  HW64
//
//  Created by Jarae on 17/4/23.
//

import SwiftUI

struct MenuPart: View {
    var body: some View {
        VStack {
            VStack {
                HStack(spacing: 30) {
                    VStack(alignment: .leading) {
                        CustomText(text: "Paul", size: 16, weight: .bold)
                        CustomText(text: "French Pasta\nDelivery: FREE • Minimum: $0", size: 12, weight: .semibold)
                            .foregroundColor(.gray)
                    }
                    CustomImage(image: Image("3"), width: 120, height: 120)
                }
                HStack(alignment: .center) {
                    CustomImage(image: Image(systemName: "star.fill"), width: 10, height: 10)
                    CustomText(text: "4,5 *", size: 12, weight: .bold)
                    CustomImage(image: Image(systemName: "clock"), width: 10, height: 10)
                    CustomText(text: "35 min", size: 12, weight: .bold)
                }
                .padding(.bottom)            }
                .padding(.horizontal)
                .background(Color.gray.opacity(0.1))
        }
        .padding(20)
    }
}


