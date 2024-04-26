//
//  SettingsView.swift
//  Evently
//
//  Created by Martynas Baranskas on 24/04/2024.
//

import SwiftUI
import FirebaseAuth

struct ProfileView: View {
    @EnvironmentObject var authService: AuthService
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        if authService.signedIn {
            SignedProfileView()
        } else {
            RegisterView()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    @StateObject static var authService = AuthService()

    static var previews: some View {
        if authService.signedIn {
            SignedProfileView()
        } else {
            RegisterView()
        }
    }
}
