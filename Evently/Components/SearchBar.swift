//
//  SearchBar.swift
//  Evently
//
//  Created by Martynas Baranskas on 17/04/2024.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            TextField("Ieškoti renginių", text: $searchText)
                .frame(height: 40)
                .padding(.horizontal, 10)
                .padding(.vertical, 8)
                .background(Color("BackgroundColor"))
                .cornerRadius(10)
                .foregroundColor(Color("SecondaryTextColor"))
                .frame(maxWidth: .infinity) // Fill full width
                .overlay(
                    HStack {
                        Spacer() // Push TextField to leading edge
                        if !searchText.isEmpty { // Show clear button only if there is text
                            Button(action: {
                                searchText = ""
                                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(Color("SecondaryTextColor"))
                                    .padding(.horizontal, 10)
                            }
                        }
                    }
                )
        }
        .padding(.horizontal, 10)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant("dada"))
    }
}
