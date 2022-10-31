//
//  TouchSkyApp.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/19/22.
//

import SwiftUI

@main
struct TouchTheSkyApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(modelData)
        }
    }
}
