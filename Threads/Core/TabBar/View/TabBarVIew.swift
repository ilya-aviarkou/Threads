//
//  TabBarVIew.swift
//  Threads
//
//  Created by Ilya Averkov on 6.08.25.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab:TabBarItems = TabBarItems.feed
    @State private var previousTab:TabBarItems = TabBarItems.feed
    
    @State private var showCreateView = false
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(TabBarItems.feed)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(TabBarItems.explore)

            Text("")
                .tabItem {
                    Image(systemName: "plus")
                }
                .tag(TabBarItems.createThread)

            ActivityView()
                .tabItem {
                    Image(systemName: "heart")
                }
                .tag(TabBarItems.activity)

            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(TabBarItems.profile)
        }
        .onChange(of: selectedTab) { newValue in
            if newValue == .createThread {
                showCreateView = true
                selectedTab = previousTab
            } else {
                previousTab = newValue
                selectedTab = previousTab
            }
        }
        .sheet(isPresented: $showCreateView) {
            CreateThreadView()
        }
        .tint(.black)
    }
}
#Preview {
  TabBarView()
}
