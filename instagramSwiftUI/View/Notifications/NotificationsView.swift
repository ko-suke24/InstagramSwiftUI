//
//  NotificationsView.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/02.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView {
            LazyVStack (spacing: 20) {
                ForEach(0 ..< 20) { _ in
                    NotificationCell()
                }
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
