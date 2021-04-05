//
//  ProfileHeaderView.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/05.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("9")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                
                Spacer()
                
                HStack(spacing: 16) {
                    UserStatView(value: 1, title: "投稿")
                    UserStatView(value: 2, title: "フォロワー")
                    UserStatView(value: 3, title: "フォロー")
                }.padding(.trailing, 32)
            }
            
            Text("ユーザー名")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            Text("プロフィール")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)
            
            
            HStack {
                Spacer()
                
                ProfileActionButton()
                
                Spacer()
            }.padding(.top)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
