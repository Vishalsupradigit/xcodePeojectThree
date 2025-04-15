//
//  XAppAPICallAFThreeApp.swift
//  XAppAPICallAFThree
//
//  Created by Vishal Londhe on 26/11/24.
//

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
