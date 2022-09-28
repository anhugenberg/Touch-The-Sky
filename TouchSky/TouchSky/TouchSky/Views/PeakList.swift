//
//  PeakList.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/19/22.
//

import SwiftUI

struct PeakList: View {
    var body: some View {
        NavigationView {
            List(peaks) { landmark in
                NavigationLink {
                    PeakDetail(peak: landmark)
                } label: {
                    PeakRow(peak: landmark)
                }
            }
            .navigationTitle("All")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            PeakList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

