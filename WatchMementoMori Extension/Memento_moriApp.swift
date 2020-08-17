//
//  Memento_moriApp.swift
//  WatchMementoMori Extension
//
//  Created by lars on 16/08/2020.
//

import SwiftUI

@main
struct Memento_moriApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
