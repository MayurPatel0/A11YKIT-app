//
//  Checkbox.swift
//  ComponentLibrary
//
//  Created by mayur patel on 16/03/2024.
//

import Foundation
import SwiftUI
import SwiftData

struct Checkbox: View {
    @State private var isCheckedCircle: Bool = false
    @State private var isCheckedSquare: Bool = false
    
    var body: some View{
        VStack{
            Text("Checkbox")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            Button(action: {
                isCheckedCircle.toggle()
            }) {
                HStack {
                    Image(systemName: isCheckedCircle ? "checkmark.circle" : "circle")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .accessibilityLabel(isCheckedCircle ? "Checked" : "Not Checked")
                        .accessibilityHint(Text("Double tap to toggle"))
                    Text("Checkbox example - circle")
                }
            }
            .buttonStyle(PlainButtonStyle())
            .padding(.top, 20)
            
            Button(action: {
                isCheckedSquare.toggle()
            }) {
                HStack {
                    Image(systemName: isCheckedSquare ? "checkmark.square" : "square")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .accessibilityLabel(isCheckedSquare ? "Checked" : "Not Checked")
                        .accessibilityHint(Text("Double tap to toggle"))
                    Text("Checkbox example - Square")
                }
            }
            .buttonStyle(PlainButtonStyle())
            .padding(.top, 20)
            
        }
    }
}

struct Checkbox_Previews: PreviewProvider {
    static var previews: some View {
        Checkbox()
    }
}
