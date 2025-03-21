//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by apple on 2025/3/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .feature
    
    enum Tab {
        case feature
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem({
                    Label("Featured", systemImage: "star")
                })
                .tag(Tab.feature)
            
            LandmarkList()
                .tabItem({
                    Label("List", systemImage: "list.bullet")
                })
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
