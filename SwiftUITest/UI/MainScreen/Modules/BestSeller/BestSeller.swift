//
//  BestSeller.swift
//  SwiftUITest
//
//  Created by Kirill Khristenko on 19.10.2022.
//

import SwiftUI

struct BestSeller: View {
    var body: some View {
        VStack {
            HStack{
                Text("Best Seller")
                    .bold()
                    .font(Font(CTFont(.system, size: 25)))
                    .padding(.leading, 17)
                    .foregroundColor(.black)
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
            LazyVGrid(columns: columns, alignment: .leading, spacing: 12) {
                ForEach(1..<6) {_ in
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 181, height: 227, alignment: .center)
                }
            }
            .padding(.horizontal, 17)
        }
    }
    private var columns: [GridItem] = [
        GridItem(.fixed(181), spacing: 11, alignment: .leading),
        GridItem(.fixed(181))
    ]

}

struct BestSeller_Previews: PreviewProvider {
    static var previews: some View {
        BestSeller()
    }
}
