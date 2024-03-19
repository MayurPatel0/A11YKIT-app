//
//  Item.swift
//  ComponentLibrary
//
//  Created by mayur patel on 12/03/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
