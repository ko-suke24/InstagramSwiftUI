//
//  FeedView.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/02.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            ForEach(0 ..< 10) { _ in
                FeedCell()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
