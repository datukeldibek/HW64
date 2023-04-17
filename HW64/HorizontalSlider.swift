//
//  HorizontalSlider.swift
//  HW64
//
//  Created by Jarae on 17/4/23.
//

import SwiftUI
struct HorizontalSlider: View {
    var image: Image
    var title: String
    var isSelected: Bool
    var body: some View {
        HStack {
            //Image(systemName: "fish"),
            CustomImage(image: image)
                .foregroundColor(isSelected ? .white : .black)
                .padding(isSelected ? .horizontal : .all, 15)
                .background(!isSelected ? Color(.white) : .clear)
                .cornerRadius(16)
                .shadow(color: Color(.black).opacity(0.2), radius: 8, x: 0, y: 2)
                
            if isSelected {
                CustomText(text: title, size: 14, weight: .semibold)
                    .foregroundColor(.white)
            }
        }
        .padding(.all, 15)
        .background(Capsule().foregroundColor(isSelected ? .black : .clear))
        .cornerRadius(10)
        //.background(isSelected ? .black : .clear)
    }
}

