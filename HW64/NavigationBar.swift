//
//  NavigationBar.swift
//  HW64
//
//  Created by Jarae on 14/4/23.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            CustomButton(image: Image("menu"))
            Spacer()
            HStack {
                VStack {
                    CustomText(text: "Delivering to",
                               size: 12,
                               weight: .light)
                    CustomText(text: "Manas Ave",
                               size: 20,
                               weight: .bold)
                }
                CustomImage(image: Image("vector"),  
                            width: 10,
                            height: 10)
            }
            Spacer()
            CustomButton(image: Image("basket"))
        }
        .padding(.horizontal, 20)
    }
    
}
