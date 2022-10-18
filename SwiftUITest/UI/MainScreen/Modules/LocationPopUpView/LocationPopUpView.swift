//
//  LocationPopUpView.swift
//  SwiftUITest
//
//  Created by Kirill Khristenko on 18.10.2022.
//

import SwiftUI

struct LocationPopUpView: View {
    var body: some View {
        HStack {
            Image("Local")
                .resizable()
                .foregroundColor(Color("FF6E4E"))
                .frame(width: 12, height: 15, alignment: .center)
            Text("Zihuatanejo, Gro")
            Image("PopUp")
                .resizable()
                .frame(width: 10, height: 5, alignment: .center)
        }
    }
}

struct LocationPopUpView_Previews: PreviewProvider {
    static var previews: some View {
        LocationPopUpView()
    }
}
