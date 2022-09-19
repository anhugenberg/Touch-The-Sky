//
//  PeakDetail.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/19/22.
//

import SwiftUI

struct PeakDetail: View {
    var landmark: Peak

    var body: some View {
        ScrollView {
            
            RectangleImage(image: landmark.image)

            VStack(alignment: .leading) {
                HStack{
                    Text(landmark.summitTrail)
                        .font(.title2)
                }
                .padding(.bottom)

                HStack {
                    Text(landmark.length)
                    Spacer()
                    Text(landmark.elevation)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("Description:")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PeakDetail_Previews: PreviewProvider {
    static var previews: some View {
        PeakDetail(landmark: peaks[0])
    }
}
