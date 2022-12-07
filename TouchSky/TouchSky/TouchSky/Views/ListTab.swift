//
//  ListTab.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/26/22.
//

import SwiftUI
import SlidingTabView

struct ListTab: View {
    
    @EnvironmentObject var modelData: ModelData

    @State private var tabIndex = 0
    
    enum Tab: String, CaseIterable {
        case all = "All"
        case completed = "Completed"
        case todo = "To Do"

        init(index: Int) {
            self = Tab.allCases[index]
        }

        static var tabList: [String] {
            allCases.map { $0.rawValue }
        }

    }
    
    var peaks: [Peak] {
        var peaks = modelData.peaks
        switch Tab(index: tabIndex) {
        case .all:
            return peaks
        case .completed:
            peaks = peaks.filter(\.isCompleted)
        case .todo:
            peaks = peaks.filter(\.isToDo)
        }
        return peaks
    }

    var body: some View {
        NavigationStack {
            VStack{
                SlidingTabView(selection: $tabIndex, tabs: Tab.tabList, animation: .easeInOut)
                Spacer()

                List(peaks) { peak in
                    NavigationLink {
                        PeakDetail(peak: peak)
                    } label: {
                        PeakRow(peak: peak)
                    }
                }

                Spacer()
            }
        }
    }
}

struct ListTab_Previews: PreviewProvider {
    static var previews: some View {
        ListTab()
            .environmentObject(ModelData())
    }
}
