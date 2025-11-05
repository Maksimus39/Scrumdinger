//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Максим Минаков on 05.11.2025.
//

import SwiftUI
import ThemeKit


struct ScrumsView: View {
    
    let scrums: [DailyScrum]
    
    var body: some View {
        List(scrums){ scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}


#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
