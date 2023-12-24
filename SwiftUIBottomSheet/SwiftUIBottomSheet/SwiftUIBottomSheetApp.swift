//
//  SwiftUIBottomSheetApp.swift
//  SwiftUIBottomSheet
//
//  Created by ChungTing on 2023/12/24.
//

import SwiftUI

@main
struct SwiftUIBottomSheetApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
