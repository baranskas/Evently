//
//  SettingsView.swift
//  Evently
//
//  Created by Martynas Baranskas on 24/04/2024.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("dismiss profile") {
            dismiss()
        }
        .font(.title)
    }
}

#Preview {
    ProfileView()
}
