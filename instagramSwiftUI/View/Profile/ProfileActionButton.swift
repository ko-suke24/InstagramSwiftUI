//
//  ProfileActionButton.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/05.
//

import SwiftUI

struct ProfileActionButton: View {
    let isCurrentUser: Bool
    var isFollowed = true
    
    var body: some View {
        if isCurrentUser {
            Button(action: {}, label: {
                Text("プロフィール編集")
                    .font(.system(size: 15, weight: .semibold))
                    .frame(width: 360, height: 32)
                    .foregroundColor(.black)
                    .overlay(
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.gray, lineWidth: 1))
            })
        } else {
            HStack {
                Button(action: {}, label: {
                    Text(isFollowed ? "フォロー中" : "フォローする")
                        .font(.system(size: 15, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundColor(isFollowed ? .black : .white)
                        .background(isFollowed ? Color.white : Color.blue)
                        .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.gray, lineWidth: isFollowed ? 1 : 0))
                }).cornerRadius(3)
                
                Button(action: {}, label: {
                    Text("メッセージ")
                        .font(.system(size: 15, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundColor(.black)
                        .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.gray, lineWidth: 1))
                })
            }
        }
    }
}
