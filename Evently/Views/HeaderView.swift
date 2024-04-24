//
//  HeaderView.swift
//  Evently
//
//  Created by Martynas Baranskas on 18/04/2024.
//

import SwiftUI

struct HeaderView: View {
    @State private var showingProfileSheet = false
    @State private var showingSettingSheet = false
    
    var body: some View {
        HStack {
            Button(action: {
                showingProfileSheet.toggle()
            }, label:  {
                Image(systemName: "person.circle.fill")
                    .font(.title)
            })
            .sheet(isPresented: $showingProfileSheet) {
                ProfileView()
            }
            
            Spacer()
            Text("evently.")
                .font(.title)
                .bold()
                .foregroundColor(Color("ContrastTextWB"))
            Spacer()
            
            Button(action: {
                showingSettingSheet.toggle()
            }, label:  {
                Image(systemName: "gear.circle.fill")
                    .font(.title)
            })
            .sheet(isPresented: $showingSettingSheet) {
                SettingsView()
            }
        }
        .frame(maxHeight: 20)
        .padding()
        .foregroundColor(Color("SecondaryTextColor"))
    }
}

#Preview {
    HeaderView()
}
