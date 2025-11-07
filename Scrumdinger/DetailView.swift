//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Максим Минаков on 06.11.2025.
//

import SwiftUI
import ThemeKit


struct DetailView: View {
    
    var scrum: DailyScrum
    var body: some View {
        List{
            Section(header: Text("Meeting info")){
                NavigationLink(destination: MeetingView()){
                    Label("Start meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack{
                    Label("Lenght", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack{
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityLabel("Meeting timer")
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Attendees")){
                ForEach(scrum.attendees){ attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
        .navigationTitle(scrum.title)
    }
}

#Preview {
    DetailView(scrum: DailyScrum.sampleData[0])
}
