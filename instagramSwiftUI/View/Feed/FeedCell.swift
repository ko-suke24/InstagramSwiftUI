//
//  FeedCell.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/03.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("4")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("joker")
                    .font(.system(size: 14, weight: .semibold))
            }
            
           Image("shop")
              .resizable()
              .scaledToFill()
              .frame(maxHeight: 440)
              .clipped()
            
            HStack(spacing: 8){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 28)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(4)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(4)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(4)
                })
            }.foregroundColor(.black)
            
            HStack {
                Text("batman")
                    .font(.system(size: 14, weight: .semibold))
                    Text("bbbbbbbbbbbbbbbb")
                    .font(.system(size: 15))
            }
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.top)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
            FeedCell()
    }
}
