//
//  ToDoButton.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 10/26/22.
//

import SwiftUI

struct ToDoButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle To Do", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct ToDoButton_Previews: PreviewProvider {
    static var previews: some View {
        ToDoButton(isSet: .constant(true))
    }
}
