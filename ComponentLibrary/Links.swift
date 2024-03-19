//
//  Links.swift
//  ComponentLibrary
//
//  Created by mayur patel on 16/03/2024.
//

import Foundation
import SwiftUI
import SwiftData

struct Links: View {
    var body: some View {
        Link(destination: URL(string: "https://www.apple.com/uk/app-store/")!) {
            HStack{
                Image(systemName: "apps.iphone.badge.plus")
                    .foregroundColor(.black)
                    .frame(width: 20, height: 20)
                Text("Visit  App Store")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 20))
            }
        }
    }
}

struct Links_Previews: PreviewProvider {
    static var previews: some View {
        Links()
    }
}
