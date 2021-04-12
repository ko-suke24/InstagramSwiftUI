//
//  UploadPostView.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/02.
//

import SwiftUI

struct UploadPostView: View {
    @State private var selectImage: UIImage?
    @State var postImage: Image?
    @State var captionText = ""
    
    var body: some View {
        VStack {
            if postImage != nil {
                Button(action: {}, label: {
                    Image(systemName: "camera.circle")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .clipped()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .padding(.top, 56)
                        .foregroundColor(.black)
                 
            })
            }else {
                HStack {
                    Image("10")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 96)
                        .clipped()
                    TextField("aaaaa", text:$captionText)
                }.padding()
                
                Button(action: {}, label: {
                    Text("シェアする")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }).padding()
            }
            
            Spacer()
        }
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
