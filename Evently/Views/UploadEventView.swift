//
//  UploadEventView.swift
//  Evently
//
//  Created by Martynas Baranskas on 16/04/2024.
//

import SwiftUI

struct UploadEventView: View {
    @EnvironmentObject var authService: AuthService
    
    var body: some View {
        if authService.signedIn {
            SignedUploadEventView()
        } else {
            LoginView()
        }
    }
}

struct UploadEventView_Previews: PreviewProvider {
    @StateObject static var authService = AuthService()

    static var previews: some View {
        if authService.signedIn {
            SignedUploadEventView()
        } else {
            LoginView()
        }
    }
}
