//
//  PeakDetail.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/19/22.
//

import SwiftUI

struct PeakDetail: View {
    @EnvironmentObject var modelData: ModelData

    
    var peak: Peak
    
    var peakIndex: Int {
        modelData.peaks.firstIndex(where: { $0.id == peak.id })!
    }

    var body: some View {
        ScrollView {
            
            RectangleImage(image: peak.image)

            VStack(alignment: .leading) {
                HStack{
                    Text(peak.summitTrail)
                        .font(.title2)
                    ToDoButton(isSet: $modelData.peaks[peakIndex].isToDo)
                    CompletedButton(isSet: $modelData.peaks[peakIndex].isCompleted)
                }
                .padding(.bottom)
                VStack {
                    HStack{
                        NavigationLink {
                            CompletionFormView()
                        } label: {
                            Text("Completion Form")
                                .foregroundColor(.blue)
                                .bold()
                                .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(.blue, lineWidth: 3)
                                            .frame(width: 150, height: 30)
                                    )
                        }
                    }
                }
                .padding(.bottom, 20)
                
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
    static let modelData = ModelData()
    
    static var previews: some View {
        PeakDetail(peak: modelData.peaks[0])
            .environmentObject(modelData)
    }
}
                
