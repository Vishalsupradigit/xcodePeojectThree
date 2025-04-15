//
//  XAppAPICallAFThreeApp.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 26/11/24.
// new git hub code new change
// here all do

import SwiftUI

@main
struct XAppAPICallAFThreeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SplashScreen()
            
         //   MainDashboardScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
