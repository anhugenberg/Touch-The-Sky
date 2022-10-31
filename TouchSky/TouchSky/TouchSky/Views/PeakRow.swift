//
//  PeakRow.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/19/22.
//

import SwiftUI

struct PeakRow: View {
    var peak: Peak

    var body: some View {
        HStack {
            peak.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(peak.name)
            Spacer()
            
            if peak.isCompleted {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
            }
            if peak.isToDo {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct PeakRow_Previews: PreviewProvider {
    static var peaks = ModelData().peaks

    static var previews: some View {
        Group {
            PeakRow(peak: peaks[0])
            PeakRow(peak: peaks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

