//
//  Item.swift
//  Andreyev Portal MacOS
//
//  Created by Joe Fu on 22/8/2024.
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
