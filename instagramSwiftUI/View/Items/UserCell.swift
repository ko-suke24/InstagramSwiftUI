//
//  UserCell.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/04.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image("9")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading) {
                Text("batman")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("aaaaa")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
