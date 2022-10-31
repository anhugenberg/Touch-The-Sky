//
//  ToDoList.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 10/26/22.
//

import SwiftUI

struct ToDoList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showToDoOnly = true
    
    var filteredPeaks: [Peak] {
        modelData.peaks.filter { peak in
            (!showToDoOnly || peak.isToDo)
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
            .navigationTitle("To Do")
        }
    }
}

struct ToDoList_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList()
            .environmentObject(ModelData())
    }
}
