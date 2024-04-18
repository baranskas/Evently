//
//  HomeView.swift
//  Evently
//
//  Created by Martynas Baranskas on 16/04/2024.
//

import SwiftUI

struct EventsView: View {
    var events: [Event]
    
    var body: some View {        
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack (alignment: .leading) {
                    ForEach(events, id: \.id) { event in
                        NavigationLink(destination: DetailView(event: event)) {
                            EventCard(event: event)
                                .padding(.bottom, 5)
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView(events: Event.sampleEvents)
    }
}
