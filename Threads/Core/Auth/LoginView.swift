//
//  LoginView.swift
//  Threads
//
//  Created by Ilya Averkov on 3.08.25.
//

import SwiftUI

struct LoginView: View {
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        NavigationStack {
            Spacer()
            
            Image("threads-icon")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 120, maxHeight: 120)
            VStack {
                Group {
                    TextField("Username", text: $username)
                    SecureField("Password", text: $password)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            }
            .padding(.top, 18)
            
            NavigationLink{
                Text("Forgot password view")
            } label: {
                Text("Forgot password?")
            }
            .foregroundColor(.black)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding()
            .fontWeight(.bold)
            
            Button{
                
            }label: {
                Text("Login")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.black)
            .cornerRadius(10)
            
            Spacer()
            
            Divider()
            
                NavigationLink {
                    Text("Forgot password")
                }label: {
                    HStack {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .font(.footnote)
                    .foregroundColor(.black)
                }
        }
        .padding()
    }
}

#Preview {
    LoginView().preferredColorScheme(.light)
}
