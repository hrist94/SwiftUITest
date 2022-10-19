//
//  MainView.swift
//  SwiftUITest
//
//  Created by Kirill Khristenko on 18.10.2022.
//

import SwiftUI

struct MainView: View {
    @State var text: String = ""
    
    
    var body: some View {
        ZStack {
            Color("E5E5E5")
                .ignoresSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    LocationPopUpView()
                        .padding(.top)
                    Spacer()
                        .frame(height: 18)
                    Category()
                    Spacer()
                        .frame(height: 50)
                    SearchBar(text: $text)
                        .padding(.horizontal, 32)
                    Spacer()
                        .frame(height: 24)
                    HotSales()
                    Spacer()
                        .frame(height: 24)
                    BestSeller()
                    Spacer()
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
