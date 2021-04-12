//
//  UploadPostView.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/02.
//

import SwiftUI

struct UploadPostView: View {
    @State private var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText = ""
    @State var imagePickerPresented = false
    
    var body: some View {
        VStack {
            if postImage == nil {
                Button(action: { imagePickerPresented.toggle() }, label: {
                    Image(systemName: "camera.circle")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .clipped()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .padding(.top, 56)
                        .foregroundColor(.black)
                }).sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
                    ImagePicker(image:  $selectedImage)
                })
            }else if let image = postImage {
                HStack {
                    image
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

extension UploadPostView {
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        postImage = Image(uiImage: selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
