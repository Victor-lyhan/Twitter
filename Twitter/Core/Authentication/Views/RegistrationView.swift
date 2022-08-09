//
//  RegistrationView.swift
//  Twitter
//
//  Created by Victor Han on 2022/8/8.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationmode
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Get started.", title2: "Create your account.")
            
            VStack{
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                    .padding()
                CustomInputField(imageName: "person", placeholderText: "Username", text: $username)
                    .padding()
                CustomInputField(imageName: "person", placeholderText: "Fullname", text: $fullname)
                    .padding()
                CustomInputField(imageName: "lock", placeholderText: "Password", text: $password)
                    .padding()
            }
            .padding(32)
            
            Button {
                viewModel.register(withEmail: email, password: password, fullname: fullname, username: username)
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            Button {
                presentationmode.wrappedValue.dismiss()
            } label: {
                HStack{
                    Text("Already have an account?")
                        .font(.footnote)
                    
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom,32)
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

