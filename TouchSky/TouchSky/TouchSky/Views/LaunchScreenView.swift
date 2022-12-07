//
//  LaunchScreenView.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 12/5/22.
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        Image("launchimg")
            .resizable()
            .frame(width: 450, height: 865)
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
