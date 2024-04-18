//
//  ImageGallery.swift
//  Evently
//
//  Created by Martynas Baranskas on 18/04/2024.
//

import SwiftUI

struct ImageGallery: View {
    var event: Event
    
    var body: some View {
        VStack {
            TabView {
                ForEach(event.images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .frame(height: 250)
        }
    }
}

#Preview {
    ImageGallery(event: Event.defaultEvent)
}
