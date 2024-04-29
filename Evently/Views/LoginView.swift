//
//  LoginView.swift
//  Evently
//
//  Created by Martynas Baranskas on 26/04/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @EnvironmentObject var authService: AuthService
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Prisijungti")
                        .font(.largeTitle)
                        .foregroundColor(Color("PrimaryTextColor"))
                    
                    TextField("Email", text: $email)
                        .padding(.vertical, 15)
                        .padding(.horizontal, 10)
                        .background(Color("BackgroundColor"))
                        .cornerRadius(15)
                    
                    SecureField("Password", text: $password)
                        .padding(.vertical, 15)
                        .padding(.horizontal, 10)
                        .background(Color("BackgroundColor"))
                        .cornerRadius(15)
                        .padding(.vertical, 5)
                    
                    Button("Prisijungti") {
                        authService.regularSignIn(email: email, password: password) { error in
                            if let e = error {
                                print(e.localizedDescription)
                            }
                        }
                    }
                    .padding(.vertical, 15)
                    .padding(.horizontal, 15)
                    .foregroundColor(Color("SecondaryBackgroundColor"))
                    .background(Color("SecondaryTextColor"))
                    .cornerRadius(15)

                    HStack {
                        Text("Neturite paskyros? ")
                        
                        NavigationLink(destination: RegisterView()) {
                            Text("Registruotis").foregroundColor(Color("PrimaryTextColor"))
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top)
                    
                }
                .padding()
            }
        }
    }
}



#Preview {
    LoginView()
}
