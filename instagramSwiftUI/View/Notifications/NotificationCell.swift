//
//  NotificationCell.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/05.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage = true
    var body: some View {
        
        HStack {
            Image("9")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            Text("joker").font(.system(size: 14, weight: .semibold))
                Text("sasasasas")
                    .font(.system(size: 15))
            
            Spacer()
            
            if showPostImage {
                Image("9")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
            }else {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("フォローする")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(.system(size: 14, weight: .semibold))
                })
            }
            
        }.padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
