//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Максим Минаков on 05.11.2025.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
