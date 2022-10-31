//
//  CompletedList.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 10/26/22.
//

import SwiftUI

struct CompletedList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showCompletedOnly = true
    
    var filteredPeaks: [Peak] {
        modelData.peaks.filter { peak in
            (!showCompletedOnly || peak.isCompleted)
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredPeaks) { peak in
                NavigationLink {
                    PeakDetail(peak: peak)
                } label: {
                    PeakRow(peak: peak)
                }
            }
            .navigationTitle("Completed")
        }
    }
}

struct CompletedListView_Previews: PreviewProvider {
    static var previews: some View {
        CompletedList()
            .environmentObject(ModelData())
    }
}
