//
//  ProfileViewModel.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/19.
//

import SwiftUI

class ProfileViewModel: ObservableObject {
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    func follow() {
        guard let uid = user.id else { return }
        UserService.follow(uid: uid) { _ in
            
        }
    }
    
    func unfollow() {
        
    }
    
    func checkIfUserIsFollowed() {
        
    }
}
