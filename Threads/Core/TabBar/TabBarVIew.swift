//
//  TabBarVIew.swift
//  Threads
//
//  Created by Ilya Averkov on 6.08.25.
//

import SwiftUI

struct TabBarVIew: View {

    var body: some View {
      TabView {
          FeedView()
              .tabItem {
                  Image(systemName: "house")
              }
          
          ExploreView()
              .tabItem {
                  Image(systemName: "magnifyingglass")
              }
          
          Text("Feed View")
              .tabItem {
                  Image(systemName: "plus")
              }
          
          ActivityView()
              .tabItem {
                  Image(systemName: "heart")
              }
          
          ProfileView()
              .tabItem {
                  Image(systemName: "person")
              }
      }
      .tint(.black)
  }
}

#Preview {
  TabBarVIew()
}
