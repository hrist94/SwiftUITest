//
//  HotSales.swift
//  SwiftUITest
//
//  Created by Kirill Khristenko on 19.10.2022.
//

import SwiftUI

struct HotSales: View {
    var body: some View {
        VStack {
            HStack{
                Text("Hot Sales")
                    .bold()
                    .font(Font(CTFont(.system, size: 25)))
                    .foregroundColor(.black)
                    .padding(.leading, 17)
                Spacer()
                Button {
                    print("pressed")
                } label: {
                    Text("see more")
                        .foregroundColor(Color("FF6E4E"))
                        .font(Font(CTFont(.system, size: 15)))
                }
                .padding(.trailing, 33)
            }
            Spacer()
                .frame(height: 17)
            TabView {
                ForEach(0..<8) {_ in
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.black)
                        .frame(width: UIScreen.main.bounds.width - 30, height: 182, alignment: .center)
                }
                .padding(.horizontal, 15)
            }
            .frame(height: 182)
            .tabViewStyle(.page(indexDisplayMode: .never))
            .shadow(color: .gray, radius: 5, x: 0, y: 0)
        }
    }
    private var rows: [GridItem] = [
        GridItem(.fixed(190), spacing: 23, alignment: .center)
    ]
}

struct HotSales_Previews: PreviewProvider {
    static var previews: some View {
        HotSales()
    }
}
