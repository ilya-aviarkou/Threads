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
          Text("Feed View")
              .tabItem {
                  Image(systemName: "house")
              }
          
          Text("Explore")
              .tabItem {
                  Image(systemName: "magnifyingglass")
              }
          
          Text("Feed View")
              .tabItem {
                  Image(systemName: "plus")
              }
          
          Text("Feed View")
              .tabItem {
                  Image(systemName: "heart")
              }
          
          Text("Feed View")
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
