//
//  Switch.swift
//  ComponentLibrary
//
//  Created by mayur patel on 16/03/2024.
//

import Foundation
import SwiftUI
import SwiftData

struct Switch: View {
    @State private var triggerMessage = false
    var body: some View {
        VStack {
            Toggle("Wi-Fi", isOn: $triggerMessage)
                .toggleStyle(SwitchToggleStyle())
            
            Text(triggerMessage ? "Wi-Fi is turned on" : "Wi-Fi is turned off")
                .padding(.top, 50)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.horizontal, 120)
    }
}

struct Switch_Previews: PreviewProvider {
    static var previews: some View {
        Switch()
    }
}

