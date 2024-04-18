//
//  HeaderView.swift
//  Evently
//
//  Created by Martynas Baranskas on 18/04/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .font(.title)
            Spacer()
            Text("evently.")
                .font(.title)
                .bold()
                .foregroundColor(Color("ContrastTextWB"))
            Spacer()
            Image(systemName: "gear.circle.fill")
                .font(.title)
        }
        .frame(maxHeight: 20)
        .padding()
        .foregroundColor(Color("SecondaryTextColor"))
    }
}

#Preview {
    HeaderView()
}
