//
//  CustomImage.swift
//  HW64
//
//  Created by Jarae on 14/4/23.
//

import SwiftUI

struct CustomImage: View {
    var image: Image
    var width: CGFloat?
    var height: CGFloat?
    var body: some View {
        image
            //.resizable()
            .frame(width: width, height: height)
    }
    
}

