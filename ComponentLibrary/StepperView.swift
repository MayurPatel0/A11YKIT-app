//
//  Stepper.swift
//  ComponentLibrary
//
//  Created by mayur patel on 16/03/2024.
//

import Foundation
import SwiftUI
import SwiftData


struct StepperView: View {
    @State var num = 1
    
    var body: some View {
        VStack{
            Stepper("Stepper value(1-10): \(num)", value: $num, in: 1...10)
                .fixedSize()
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
