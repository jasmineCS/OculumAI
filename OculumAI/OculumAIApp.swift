//
//  OculumAIApp.swift
//  OculumAI
//
//  Created by 90310470 on 3/14/24.
//

import SwiftUI
import SwiftData

@main
struct OculumAIApp: App {
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
            StarterPage()
        }
        .modelContainer(sharedModelContainer)
    }
}
