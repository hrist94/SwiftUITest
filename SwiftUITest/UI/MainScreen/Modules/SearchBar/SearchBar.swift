//
//  SearchBar.swift
//  SwiftUITest
//
//  Created by Kirill Khristenko on 18.10.2022.
//

import SwiftUI
 
struct SearchBar: View {
    @Binding var text: String
 
    @State private var isEditing = false
    @FocusState private var fieldIsFocused: Bool
 
    var body: some View {
        
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 17, style: .circular)
                    .fill(Color.white)
                    .frame(height: 34)
                
                HStack(spacing: 6) {
                    Spacer()
                        .frame(width: 18)
                    Image("Search")
                        .foregroundColor(Color("FF6E4E"))
                    TextField("Search", text: $text)
                        .foregroundColor(Color.black)
                        .padding(.all, 5)
                        .cornerRadius(8)
                        .onTapGesture {
                            self.isEditing = true
                        }
                        .focused($fieldIsFocused)
                    }
            }
            Spacer()
                .frame(width: 11)
            ZStack {
                Circle()
                    .frame(width: 34, height: 34, alignment: .center)
                    .foregroundColor(Color("FF6E4E"))
                Button(action: {
                    print("123")
                    fieldIsFocused = false
                }) {
                    Image("QRcode")
                        .foregroundColor(Color.white)
                }
            }
        }
    }
}


struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
