//
//  UserCell.swift
//  Threads
//
//  Created by Ilya Averkov on 8.08.25.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircledProfileImage()
            
            VStack (alignment: .leading, spacing: 8){
                Text("Username")
                    .fontWeight(.semibold)
                Text("Full Name")
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                )
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
