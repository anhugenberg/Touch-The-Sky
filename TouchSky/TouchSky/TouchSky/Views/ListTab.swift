//
//  ListTab.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/26/22.
//

import SwiftUI
import SlidingTabView

struct ListTab: View {
    @State private var tabIndex = 0
    var body: some View {
        VStack{
            SlidingTabView(selection: $tabIndex, tabs: ["All", "Completed", "To Do"], animation: .easeInOut)
            Spacer()
            if tabIndex == 0 {
                    PeakList()
            } else if tabIndex == 1 {
                Text("Completed")
            } else if tabIndex == 2 {
                Text("To Do")
            }
            Spacer()
        }
    }
}

struct ListTab_Previews: PreviewProvider {
    static var previews: some View {
        ListTab()
    }
}
