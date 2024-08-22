//
//  Andreyev_Portal_MacOSApp.swift
//  Andreyev Portal MacOS
//
//  Created by Joe Fu on 22/8/2024.
//

import SwiftUI
import SwiftData

@main
struct Andreyev_Portal_MacOSApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
