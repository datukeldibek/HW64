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
