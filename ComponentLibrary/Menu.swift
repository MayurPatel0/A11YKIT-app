//
//  Menu.swift
//  ComponentLibrary
//
//  Created by mayur patel on 15/03/2024.
//

import Foundation
import SwiftUI
import SwiftData

struct Menu: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.5)
                    .ignoresSafeArea()
                    .onTapGesture {
                        self.isShowing.toggle()
                    }
                
                HStack {
                    VStack(alignment: .leading, spacing: 2)
                    {
                        MenuHeader()
                        
                        Spacer()
                        Button(action: { self.isShowing.toggle() }) {
                                                    Image(systemName: "xmark")
                                                        .foregroundColor(.white)
                                                        .font(.title)
                                                        .padding(10)
                                                        .background(Color.red)
                                                        .clipShape(Circle())
                                                }
                                                Spacer()
                                            .padding(.top, 10)
                                            .padding(.leading, 10)
                    }
                    .frame(width: 250)
                    .background(.white)
                    Spacer()
                }
            }
        }
        .animation(.easeOut, value: isShowing)
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu(isShowing: .constant(true))
    }
}
