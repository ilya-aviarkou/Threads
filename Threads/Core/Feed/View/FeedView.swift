//
//  FeedView.swift
//  Threads
//
//  Created by Ilya Averkov on 7.08.25.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false) {
                LazyVStack {
                    ForEach (1...10, id:\.self) { threadCell in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("DEBUG: Refresh threads")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    FeedView()
}
