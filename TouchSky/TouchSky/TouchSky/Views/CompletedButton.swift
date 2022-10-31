//
//  CompletedButton.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 10/26/22.
//

import SwiftUI

struct CompletedButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Completed", systemImage: isSet ? "checkmark.circle.fill" : "checkmark.circle")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .green : .gray)
        }
    }
}

struct CompletedButton_Previews: PreviewProvider {
    static var previews: some View {
        CompletedButton(isSet: .constant(true))
    }
}
