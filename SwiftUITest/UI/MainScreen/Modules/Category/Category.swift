//
//  Category.swift
//  SwiftUITest
//
//  Created by Kirill Khristenko on 18.10.2022.
//

import SwiftUI

struct Category: View {
    var categories: [CategoryModel] = [CategoryModel(name: "Phones", image: UIImage(named: "Phone")!),
                                       CategoryModel(name: "Computer", image: UIImage(named: "PC")!),
                                       CategoryModel(name: "Health", image: UIImage(named: "Health")!),
                                       CategoryModel(name: "Books", image: UIImage(named: "Book")!),
                                       CategoryModel(name: "Test", image: UIImage(named:"Phone")!)
                                       ]
    @State var selectedItem: String?
    
    var body: some View {
        VStack {
            HStack{
                Text("Select Category")
                    .bold()
                    .font(Font(CTFont(.system, size: 25)))
                    .foregroundColor(.black)
                    .padding(.leading, 17)
                Spacer()
                Button {
                    print("pressed")
                } label: {
                    Text("view all")
                        .foregroundColor(Color("FF6E4E"))
                        .font(Font(CTFont(.system, size: 15)))
                }
                .padding(.trailing, 33)
            }
            Spacer()
                .frame(height: 24)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows, spacing: 23) {
                    ForEach(categories, id: \.name) {category in
                        CategoryCellView(name: category.name, image: category.image)
                            .onTapGesture {
                                selectedItem = category.name
                            }
                            .colorMultiply(self.selectedItem == category.name ? Color("FF6E4E") : Color.white)
                    }
                }
                .padding(.horizontal, 27)
                .frame(height: 110)
            }
        }
    }
    private var rows: [GridItem] = [
        GridItem(.fixed(75), spacing: 23, alignment: .center)
    ]
}

extension Category {
    private func configure(name: String, image: UIImage) {
        
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category()
    }
}
