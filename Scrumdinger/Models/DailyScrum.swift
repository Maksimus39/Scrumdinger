//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Максим Минаков on 05.11.2025.
//

import Foundation
import ThemeKit


struct DailyScrum: Identifiable{
    var id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}
