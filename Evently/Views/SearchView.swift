//
//  SearchView.swift
//  Evently
//
//  Created by Martynas Baranskas on 17/04/2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    SearchBar(searchText: $searchText)

                    if (searchText.isEmpty) {
                        CategoryView()
                            .padding(.top)
                    } else {
                        VStack {
                            ForEach(filteredEvents, id: \.id) { event in
                                NavigationLink(destination: DetailView(event: event)) {
                                    EventCard(event: event)
                                        .padding(.bottom, 5)
                                }
                            }
                            Spacer()
                        }
                    }
                }
            }
        }
    }
    
    
    var filteredEvents: [Event] {
            let lowercaseSearchText = searchText.lowercased()
            return Event.sampleEvents.filter { $0.title.lowercased().contains(lowercaseSearchText) }
    }

}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
