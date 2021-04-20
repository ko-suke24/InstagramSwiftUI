//
//  ProfileHeaderView.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/05.
//

import SwiftUI
import KingfisherSwiftUI

struct ProfileHeaderView: View {
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                KFImage(URL(string: viewModel.user.profileImageUrl))
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
            
            Text(viewModel.user.fullname)
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            Text("プロフィール")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)
            
            
            HStack {
                Spacer()
                
                ProfileActionButtonView(viewModel: viewModel)
                
                Spacer()
            }.padding(.top)
        }
    }
}
