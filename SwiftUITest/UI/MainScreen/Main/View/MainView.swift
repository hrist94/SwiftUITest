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
        VStack {
            LocationPopUpView()
            
        }
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
