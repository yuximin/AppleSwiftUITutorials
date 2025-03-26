//
//  AppleSwiftUITutorialsApp.swift
//  AppleSwiftUITutorials
//
//  Created by apple on 2025/3/21.
//

import SwiftUI

@main
struct AppleSwiftUITutorialsApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
        
#if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
#endif
    }
}
