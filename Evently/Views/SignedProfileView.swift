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
    let user = Auth.auth().currentUser!
    
    var body: some View {
            NavigationStack {
                Text("Mano Paskyra")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("Atsijungti") {
                                print("Log out tapped!")
                                authService.regularSignOut { error in
                                    
                                    if let e = error {
                                        print(e.localizedDescription)
                                    }
                                }
                            }
                        }
                    }
                Text(user.email!)
                Text(user.uid)
            }
        }
}

#Preview {
    SignedProfileView()
}
