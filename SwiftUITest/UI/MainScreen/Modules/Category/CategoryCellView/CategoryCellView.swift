//
//  CategoryCellView.swift
//  SwiftUITest
//
//  Created by Kirill Khristenko on 20.10.2022.
//

import SwiftUI

struct CategoryCellView: View {
    let name: String?
    let image: UIImage?
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(width: 71, height: 71)
                    .foregroundColor(.white)
                    .shadow(color: .gray, radius: 5, x: 0, y: 0)
                Image(uiImage: image ?? UIImage())
                    .foregroundColor(.gray)
            }
            Spacer()
                .frame(height: 7)
            Text(name ?? "")
        }
    }
}

struct CategoryCellView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCellView(name: "Phones", image: UIImage(named: "Phone"))
    }
}
