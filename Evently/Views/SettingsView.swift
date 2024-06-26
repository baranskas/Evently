//
//  SettingsView.swift
//  Evently
//
//  Created by Martynas Baranskas on 24/04/2024.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("dismiss settings") {
            dismiss()
        }
        .font(.title)
    }
}

#Preview {
    SettingsView()
}
