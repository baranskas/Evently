//
//  PriceIndicator.swift
//  Evently
//
//  Created by Martynas Baranskas on 18/04/2024.
//

import SwiftUI

struct PriceIndicator: View {
    var event: Event
    
    var body: some View {
        VStack {
            if (event.price > 0) {
                Text("\(String(format: "%.2f", event.price)) €")
                    .padding(5)
                    .background(.indigo)
            } else {
                Text("Nemokamai")
                    .padding(5)
                    .background(.green)
            }
        }
        .cornerRadius(10)
        .foregroundColor(.white)
    }
}

#Preview {
    PriceIndicator(event: Event.defaultEvent)
}
