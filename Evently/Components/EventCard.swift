//
//  EventCard.swift
//  Evently
//
//  Created by Martynas Baranskas on 16/04/2024.
//

import SwiftUI

struct EventCard: View {
    var event: Event
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(event.images[0])
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 100)
                .cornerRadius(15, corners: [.topLeft, .topRight])

            Text(event.title)
                .font(.title3)
                .bold()
                .padding(.horizontal)
                .padding(.top, 10)
                .foregroundColor(Color("PrimaryTextColor"))

            HStack {
                Label(event.city, systemImage: "map")
                Spacer()
                Label(event.formattedDate, systemImage: "calendar")
                Spacer()
                PriceIndicator(event: event)
            }
            .font(.callout)
            .padding(.horizontal)
            .padding(.bottom)
        }
        .foregroundColor(Color("SecondaryTextColor"))
        .background(Color("BackgroundColor"))
        .cornerRadius(15)
        .padding(.horizontal, 10)
    }
}

struct EventCard_Previews: PreviewProvider {
    static var previews: some View {
        EventCard(event: Event.defaultEvent)
    }
}
