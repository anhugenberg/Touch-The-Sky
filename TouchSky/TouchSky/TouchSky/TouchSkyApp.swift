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
    @State var showLaunch: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if showLaunch {
                LaunchScreenView()
                    .onAppear() {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            self.showLaunch = false
                        }
                    }

            } else {
                HomeView()
                    .environmentObject(modelData)

            }
        }
    }
}
