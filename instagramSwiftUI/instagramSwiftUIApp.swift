//
//  instagramSwiftUIApp.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/02.
//

import SwiftUI
import Firebase

@main
struct instagramSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel())
        }
    }
}
