//
//  UberAppCloneApp.swift
//  UberAppClone
//
//  Created by Антон Яценко on 02.11.2022.
//

import SwiftUI

@main
struct UberAppCloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
