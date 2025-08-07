//
//  SignUpView.swift
//  Threads
//
//  Created by Ilya Averkov on 3.08.25.
//

import SwiftUI

struct SignUpView: View {
  @State var email = ""
  @State var password = ""
  @State var fullname = ""
  @State var username = ""

  @Environment(\.dismiss) var dismiss

  var body: some View {
    Spacer()

    VStack {
      Image("threads-icon")
        .resizable()
        .scaledToFit()
        .frame(maxWidth: 120, maxHeight: 120)
      VStack {
        Group {
          TextField("Enter your email", text: $email)
          SecureField("Enter your password", text: $password)
          TextField("Enter your fullname", text: $fullname)
          SecureField("Enter your username", text: $username)
        }
        .modifier(ThreadsTextFieldModifier())
      }
      .padding(.top, 18)

      Button {} label: {
        Text("Sign up")
      }
      .modifier(ThreadsButtonModifier())
      .padding(.top, 12)
    }
    .padding()

    Spacer()

    Divider()

    Button {
      dismiss()
    } label: {
      HStack {
        Text("Already have an account?")
        Text("Sign in")
          .fontWeight(.bold)
      }
      .font(.footnote)
      .foregroundColor(.black)
    }
  }
}

#Preview {
  SignUpView()
}
