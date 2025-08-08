//
//  ExploreView.swift
//  Threads
//
//  Created by Ilya Averkov on 7.08.25.
//

import SwiftUI

struct ExploreView: View {
    @State var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach (1 ... 10, id: \.self) { user in
                        VStack {
                            UserCell()
                            
                            Divider()
                        }
                        
                    }
                    .padding(.vertical, 4)

                }

            }
        }
        .navigationTitle("Search")
        .searchable(text: $searchText)
    }
}

#Preview {
    ExploreView()
}
