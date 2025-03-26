//
//  ContentView.swift
//  MacAppleSwiftUITutorials
//
//  Created by apple on 2025/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
