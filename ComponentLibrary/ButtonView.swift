//
//  ButtonView.swift
//  ComponentLibrary
//
//  Created by mayur patel on 17/03/2024.
//

import Foundation
import SwiftUI
import SwiftData

struct ButtonView: View {
    var body: some View {
        VStack{
            Button("Enabled Button") {
            }
            .buttonStyle(.borderedProminent)
            .tint(.black)
            
            Button("Disabled Button") {
            }
            .buttonStyle(.borderedProminent)
            .tint(.black)
            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
