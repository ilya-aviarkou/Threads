//
//  ThreadsButtonModifier.swift
//  Threads
//
//  Created by Ilya Averkov on 4.08.25.
//

import SwiftUI

struct ThreadsButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.headline)
            .padding()
            .frame(maxWidth: .infinity)
            .background(.black)
            .cornerRadius(10)
    }
}
