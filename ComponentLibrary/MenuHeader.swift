//
//  MenuHeader.swift
//  ComponentLibrary
//
//  Created by mayur patel on 16/03/2024.
//

import Foundation
import SwiftUI

struct MenuHeader: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 6)
            {
                Text("User")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct MenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        MenuHeader()
    }
}

