//
//  Extensions.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/05.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
