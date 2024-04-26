//
//  CategoryView.swift
//  Evently
//
//  Created by Martynas Baranskas on 18/04/2024.
//

import SwiftUI

struct CategoryView: View {
    @State private var selectedCategory: EventCategory? = nil
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            if let category = selectedCategory {
                if filteredEvents(for: category).isEmpty {
                    VStack (alignment: .leading) {
                        Text("Nerasta renginių pagal pasirinktą kategoriją")
                            .font(.title)
                            .bold()
                            .padding()
                        
                        Button(action: {selectedCategory = nil}, label: {
                            Label("Grįžti į paiešką", systemImage: "arrowshape.backward.circle.fill")
                                .foregroundColor(Color("PrimaryTextColor"))
                                .padding(.vertical, 10)
                                .padding(.horizontal, 8)
                                .font(.callout)
                        })
                        .background(Color("BackgroundColor"))
                        .cornerRadius(15)
                        .padding(.horizontal, 10)
                    }
                    Spacer()
                } else {
                    VStack (alignment: .leading) {
                        Button(action: {selectedCategory = nil}, label: {
                            Label("Grįžti į paiešką", systemImage: "arrowshape.backward.circle.fill")
                                .foregroundColor(Color("PrimaryTextColor"))
                                .padding(.vertical, 10)
                                .padding(.horizontal, 8)
                                .font(.callout)
                        })
                        .background(Color("BackgroundColor"))
                        .cornerRadius(15)
                        .padding(.horizontal, 10)
                        
                        EventsView(events: filteredEvents(for: category))
                    }
                }
            } else {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(EventCategory.allCases, id: \.self) { category in
                            Button(action: {
                                // Action when selecting category
                                selectedCategory = category
                                
                            }) {
                                Label(category.rawValue, systemImage: category.systemImageName)
                                    .padding()
                                    .frame(maxWidth: .infinity, minHeight: 75, alignment: .leading)
                                    .background(Color("BackgroundColor"))
                                    .foregroundColor(Color("PrimaryTextColor"))
                                    .cornerRadius(10)
                                    .font(.callout)
                            }
                        }
                    }
                    .padding(.horizontal, 10)
                }
        }
    }
    func filteredEvents(for category: EventCategory) -> [Event] {
        return Event.sampleEvents.filter { $0.category == category }
    }
}

#Preview {
    CategoryView()
}
