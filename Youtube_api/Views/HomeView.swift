//
//  ContentView.swift
//  Youtube_api
//
//  Created by Mohammed Ayaan on 23/09/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "play.square.stack")
                    Text("Feed")
                }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
