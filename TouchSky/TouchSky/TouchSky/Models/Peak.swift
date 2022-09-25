//
//  Peak.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/19/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Peak: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var length: String
    var elevation: String
    var description: String
    var summitTrail: String
    var city: String
    var duration: String
    var visit: String
    var type: String
    var difficulty: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
