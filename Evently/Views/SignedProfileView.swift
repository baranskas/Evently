//
//  SignedProfileView.swift
//  Evently
//
//  Created by Martynas Baranskas on 26/04/2024.
//

import SwiftUI
import FirebaseAuth

struct SignedProfileView: View {
    @EnvironmentObject var authService: AuthService
    let userID = Auth.auth().currentUser!.uid
    
    var body: some View {
            NavigationStack {
                Text("Logged in")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("Log out") {
                                print("Log out tapped!")
                                authService.regularSignOut { error in
                                    
                                    if let e = error {
                                        print(e.localizedDescription)
                                    }
                                }
                            }
                        }
                    }
                Text(userID)
            }
        }
}

#Preview {
    SignedProfileView()
}
