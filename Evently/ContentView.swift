//
//  ContentView.swift
//  Evently
//
//  Created by Martynas Baranskas on 16/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var events = Event.sampleEvents
    @State private var selectedTab: Tab = .house
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack {
            HeaderView()

            switch selectedTab {
            case .house:
                EventsView(events: events)
            case .search:
                SearchView()
            case .doc:
                UploadEventView()
            case .saved:
                SavedEventsView()
            }

            Spacer()
            
            CustomTabBarView(selectedTab: $selectedTab)
        }
    }
}

#Preview {
    ContentView()
}
