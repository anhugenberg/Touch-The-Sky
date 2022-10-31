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
                AllList()
            } else if tabIndex == 1 {
                CompletedList()
            } else if tabIndex == 2 {
                ToDoList()
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
