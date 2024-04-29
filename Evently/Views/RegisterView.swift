//
//  RegisterView.swift
//  Evently
//
//  Created by Martynas Baranskas on 24/04/2024.
//

import SwiftUI

struct RegisterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @EnvironmentObject var authService: AuthService
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Registracija")
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
                    
                    Button("Kurti paskyrą") {
                        authService.regularCreateAccount(email: email, password: password)
                    }
                    .padding(.vertical, 15)
                    .padding(.horizontal, 15)
                    .foregroundColor(Color("SecondaryBackgroundColor"))
                    .background(Color("SecondaryTextColor"))
                    .cornerRadius(15)
                    
                    HStack {
                        Text("Turite paskyrą?")
                        
                        Button {
                            dismiss()
                        } label: {
                            Text("Prisijungti").foregroundColor(Color("PrimaryTextColor"))
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top)
                }
                .cornerRadius(15)
                .padding()
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct RegisterView_Previews: PreviewProvider {
    @StateObject static var authService = AuthService()

    static var previews: some View {
        RegisterView()
    }
}
