//
//  LoginView.swift
//  instagramSwiftUI
//
//  Created by 佐藤航輔 on 2021/04/14.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack {
                    Image("instagram.logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                        .foregroundColor(.white)
                    
                    VStack (spacing: 20){
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                        CustomSecureField(text: $password, placeholder: Text("Password"))
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                    }
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {}, label: {
                            Text("パスワードをお忘れの方")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.top)
                                .padding(.trailing, 28)
                        })
                    }
                    
                    Button(action: {
                        viewModel.login()
                    }, label: {
                        Text("ログイン")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .clipShape(Capsule())
                            .padding()
                    })
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: RegistrationView(),
                        label: {
                            HStack {
                                    Text("Don't have an account?")
                                        .font(.system(size: 14))
                                    
                                    Text("Sign Up")
                                        .font(.system(size: 14, weight: .semibold))
                                }.foregroundColor(.white)
                            }).padding(.bottom)
                }
            }.padding(.top, -50)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
