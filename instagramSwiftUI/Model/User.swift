//
//  User.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/19.
//

import FirebaseFirestoreSwift

struct  User: Identifiable, Decodable {
    let username: String
    let email: String
    let profileImageUrl: String
    let fullname: String
    @DocumentID var id: String?
    
    var isCurrentUser: Bool { return AuthViewModel.shared.userSession?.uid == id }
}
