//
//  AuthViewModel.swift
//  Twitter
//
//  Created by Victor Han on 2022/8/8.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String) {
        print("BEGUG: Login with email \(email) ")
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String){
        print("BEGUG: Register with email \(email) ")
    }
}
