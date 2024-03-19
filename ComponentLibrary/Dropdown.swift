//
//  Dropdown.swift
//  ComponentLibrary
//
//  Created by mayur patel on 16/03/2024.
//

import Foundation
import SwiftUI
import SwiftData

enum GenderIdentity: String, CaseIterable, Identifiable {
    case Woman, Man, Transgender, Nonbinary = "Non-binary"
    var id: Self { self }
}

struct Dropdown: View {
    @State private var selectedIdentity: GenderIdentity = .Man
    @State private var selectedIdentitySegmented: GenderIdentity = .Man

    var body: some View {
        VStack {
            HStack {
                Text("Gender Identity:")
                Picker("Gender Identity", selection: $selectedIdentity) {
                    ForEach(GenderIdentity.allCases) { gender in
                        Text(gender.rawValue).tag(gender)
                    }
                }
            }
            
    
            VStack {
                Text("Gender Identity:")
                Picker("Gender Identity", selection: $selectedIdentitySegmented) {
                    ForEach(GenderIdentity.allCases) { gender in
                        Text(gender.rawValue).tag(gender)
                    }
                }
                .pickerStyle(.segmented)
            }
            .padding(.top, 50)
        }
    }
}

struct Dropdown_Previews: PreviewProvider {
    static var previews: some View {
        Dropdown()
    }
}
