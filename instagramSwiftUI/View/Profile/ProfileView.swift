//
//  ProfileView.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/02.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                ProfileHeaderView(user: user)
                
                PostGridView()
            }
        }.padding(.top)
    }
}
