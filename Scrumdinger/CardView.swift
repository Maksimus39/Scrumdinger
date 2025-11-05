//
//  CardView.swift
//  Scrumdinger
//
//  Created by Максим Минаков on 05.11.2025.
//

import SwiftUI
import ThemeKit

struct CardView: View {
    
    let scrum: DailyScrum
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendes")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Участники: \(scrum.attendees.count), Время: \(scrum.lengthInMinutes) минут")
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
        .background(scrum.theme.mainColor)
    }
}

#Preview (traits: .fixedLayout(width: 400, height: 60)) {
    let scrum = DailyScrum.sampleData[0]
    return CardView(scrum: scrum)
}
