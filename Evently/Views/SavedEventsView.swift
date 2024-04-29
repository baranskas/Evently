//
//  SavedEventsView.swift
//  Evently
//
//  Created by Martynas Baranskas on 17/04/2024.
//

import SwiftUI

struct SavedEventsView: View {
    @EnvironmentObject var authService: AuthService
    
    var body: some View {
        if authService.signedIn {
            SignedSavedEventsView()
        } else {
            LoginView()
        }
    }
}

struct SavedEventsView_Previews: PreviewProvider {
    @StateObject static var authService = AuthService()

    static var previews: some View {
        if authService.signedIn {
            SignedSavedEventsView()
        } else {
            LoginView()
        }
    }
}
