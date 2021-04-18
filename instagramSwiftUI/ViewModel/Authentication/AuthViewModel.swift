//
//  AuthViewModel.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/18.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login() {
        print("Login")
    }
    
    func register() {
        print("Register")
    }
    
    func signout() {

    }
    
    func resetPassword()  {
    
    }
    
    func fetchUser() {
        
    }
    
}
