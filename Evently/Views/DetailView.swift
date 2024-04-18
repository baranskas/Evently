//
//  DetailView.swift
//  Evently
//
//  Created by Martynas Baranskas on 16/04/2024.
//

import SwiftUI

struct DetailView: View {
    var event: Event
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                
                // image component
                ImageGallery(event: event)
                
                HStack {
                    Text(event.title)
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("PrimaryTextColor"))
                    Spacer()
                    PriceIndicator(event: event)
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
                
                HStack {
                    Label(event.city, systemImage: "map")
                    Spacer()
                    Label(event.formattedDate, systemImage: "calendar")
                }
                .padding(.horizontal)
                .foregroundColor(Color("SecondaryTextColor"))
                
                Label((event.category.rawValue), systemImage: event.category.systemImageName)
                    .padding(.horizontal)
                    .padding(.top, 4)
                    .foregroundColor(Color("SecondaryTextColor"))
                
                Label(event.description, systemImage: "text.alignleft")
                    .padding(.horizontal)
                    .padding(.top, 4)
                    .foregroundColor(Color("SecondaryTextColor"))
            }
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea(edges: .top)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(event: Event.sampleEvents[0])
        }
    }
}
