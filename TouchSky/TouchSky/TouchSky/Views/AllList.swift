//
//  AllList.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/19/22.
//

import SwiftUI

struct AllList: View {
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        NavigationView {
            List(modelData.peaks) { peak in
                NavigationLink {
                    PeakDetail(peak: peak)
                } label: {
                    PeakRow(peak: peak)
                }
            }
            .navigationTitle("All")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            AllList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
                .environmentObject(ModelData())
        }
    }
}

