//
//  ThreadsTextFieldModifier.swift
//  Threads
//
//  Created by Ilya Averkov on 4.08.25.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
    }
}
