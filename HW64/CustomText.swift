//
//  CustomText.swift
//  HW64
//
//  Created by Jarae on 14/4/23.
//

import SwiftUI

struct CustomText: View {
    var text: String
    var size: CGFloat?
    var weight: Font.Weight?
    var body: some View {
        Text(text)
            .font(.system(size: size!, weight: weight!, design: .serif))
            .italic()
    }

}
