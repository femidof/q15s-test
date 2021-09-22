//
//  Q15sApp.swift
//  Q15s WatchKit Extension
//
//  Created by Phemmy DOF on 9/22/21.
//

import SwiftUI

@main
struct Q15sApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
