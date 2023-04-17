//
//  ContentView.swift
//  HW64
//
//  Created by Jarae on 13/4/23.
//

import SwiftUI


struct ContentView: View {
    
    
var tabbarItems: [String]
@State var selectedIndex = 0
    
var svItems: [String]
@State var selectedIndex2 = 0
    
@State var flag:Bool = false
@State private var myNumber: Int?
    
    @State var textFromSearch: String = ""
    @State var select = 0
    var SC1Images: [Image] = [
        Image(systemName: "car"),
        Image(systemName: "folder"),
        Image(systemName: "heart"),
        Image(systemName: "house"),
        Image(systemName: "pencil"),
        Image(systemName: "car"),
        Image(systemName: "folder"),
        Image(systemName: "heart"),
        Image(systemName: "house"),
        Image(systemName: "pencil")
    ]
    var SC1Title: [String] = ["Car", "Folder", "Heart", "House", "Pencil", "Car", "Folder", "Heart", "House", "Pencil"]


var body: some View {
ZStack {
//main vstack
    VStack {
        //1
    NavigationBar()
        //2
    ScrollView(.horizontal, showsIndicators: false) {
        HStack {
            ForEach(0..<SC1Images.count ) { item in
                HorizontalSlider(image: SC1Images[item],
                                 title: SC1Title[item],
                                 isSelected: item == select)
                    .onTapGesture {
                        select = item
                    }
            }
        }
        .padding(.horizontal)
    }
        //3
    CustomText(text: "56 stores open",
               size: 14,
               weight: .light)
            .frame(width: 380, alignment: .leading)
        //4
    HStack {
        HStack {
            CustomImage(image: Image("search"))
            TextField("Find restaurant by name",
                        text: $textFromSearch)
        }
        .padding(.all, 20)
        .background(Color(.white))
        .cornerRadius(16)
        .shadow(color: Color(.black).opacity(0.2), radius: 12, x: 0, y: 2)
        CustomButton(image: Image("setting"))
    }
    .padding()
        //5
    ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 15) {
            ForEach(0..<5) { item in
                SecondHorizontalSlider()
            }
            .frame(width: 160, height: 250, alignment: .center)
        }
        
        .padding(.horizontal)
        //.padding(.top, 20)
    }
        //6
        MenuPart()
        
        //line 7
    ScrollViewReader { scrollView in
        ScrollView(.horizontal, showsIndicators: false) {
        HStack {
            ForEach(tabbarItems.indices, id: \.self) { index in
             
                Text(tabbarItems[index])
                .font(.subheadline)
                .padding(.horizontal)
                .padding(.vertical, 4)
                .foregroundColor(selectedIndex == index ? .white : .black)
                .background(Capsule().foregroundColor(selectedIndex == index ? .black : .clear))
                .onTapGesture {
                    withAnimation(.easeInOut) {
                    selectedIndex = index
                }
            }
        }
        }
    }
    .padding()
    .background(Color(.systemGray6))
    .cornerRadius(25)
             
    }
    }//end of main vstack
    }
}//body
    
}//contentview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
        ContentView(tabbarItems: [ "Random", "Travel", "Wallpaper", "Food", "Interior Design" ], svItems: ["Delivery", "Luch", "Package", "Rating", "Order", "Time"]).previewDisplayName("TabBarView")
    }
}





