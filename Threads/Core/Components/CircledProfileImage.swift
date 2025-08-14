//
//  CircledProfileImage.swift
//  Threads
//
//  Created by Ilya Averkov on 8.08.25.
//

import SwiftUI

struct CircledProfileImage: View {
    var body: some View {
        Image("profile-debug-image")
            .resizable()
            .scaledToFill()
            .frame(width: 50, height: 50)
            .clipShape(Circle())
    }
}

#Preview {
    CircledProfileImage()
}
