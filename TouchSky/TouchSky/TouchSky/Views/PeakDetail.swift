//
//  PeakDetail.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/19/22.
//

import SwiftUI

struct PeakDetail: View {
    var peak: Peak

    var body: some View {
        ScrollView {
            
            RectangleImage(image: peak.image)

            VStack(alignment: .leading) {
                HStack{
                    Text(peak.summitTrail)
                        .font(.title2)
                }
                .padding(.bottom)
                Group{
                    Text(peak.length)
                    Divider()
                    Text(peak.elevation)
                    Divider()
                    Text(peak.duration)
                    Divider()
                    Text(peak.type)
                    Divider()
                    Text(peak.difficulty)
                }
                Group{
                    Divider()
                    Text(peak.visit)
                    Divider()
                    Text(peak.city)
                }
            }
            .padding()
        }
        .navigationTitle(peak.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PeakDetail_Previews: PreviewProvider {
    static var previews: some View {
        PeakDetail(peak: peaks[0])
    }
}

//                HStack {
//                    Text(landmark.length)
//                    Spacer()
//                    Text(landmark.elevation)
//                }
                //.font(.subheadline)
                //.foregroundColor(.secondary)

//.font(.title2)

                
