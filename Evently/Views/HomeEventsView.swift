//
//  HomeEventsView.swift
//  Evently
//
//  Created by Martynas Baranskas on 24/04/2024.
//

import SwiftUI

struct HomeEventsView: View {
    var events: [Event]
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack (alignment: .leading) {
                    HStack {
                        Text("Renginiai netrukus")
                            .bold()
                            .padding(.horizontal)
                            .font(.title)
                        Spacer()
                    }
                    EventsView(events: events)
                }
            }
            .padding(.top, 15)
        }
    }
}

struct HomeEventsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeEventsView(events: Event.sampleEvents)
    }
}
