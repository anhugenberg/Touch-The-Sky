//
//  MapView.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/26/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var mapRegion: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 39.118075, longitude: -106.445417),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    
    @EnvironmentObject var modelData: ModelData

    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: modelData.peaks) { place in
                MapAnnotation(coordinate: place.locationCoordinate) {
                    PeakAnnotationView(title: place.name)
//                  NavigationLink {
//                      PeakDetail(peak: place)
//                  } label: {
//                      PeakAnnotationView(title: place.name)
//                  }
                }
              }
              .ignoresSafeArea()
    }
}
    
    struct MapView_Previews: PreviewProvider {
        static var previews: some View {
            MapView()
                .environmentObject(ModelData())
        }
    }
}
