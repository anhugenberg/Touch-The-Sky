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
    
    var isCompleted: Bool {
        get {
            if let allCompleted = UserDefaults.standard.array(forKey: "CompletedPeaks") as? [Int]{
                return allCompleted.contains { $0 == id}
            }
            return false
        }
        set{
            var allCompleted = UserDefaults.standard.array(forKey: "CompletedPeaks") as? [Int] ?? [Int]()
            if newValue {
                allCompleted.append(id)
            } else {
                allCompleted.removeAll { $0 == id }
            }
            UserDefaults.standard.set(allCompleted, forKey: "CompletedPeaks")
        }
    }
    
    var isToDo: Bool {
        get {
            if let allToDo = UserDefaults.standard.array(forKey: "ToDoPeaks") as? [Int]{
                return allToDo.contains { $0 == id}
            }
            return false
        }
        set{
            var allToDo = UserDefaults.standard.array(forKey: "ToDoPeaks") as? [Int] ?? [Int]()
            if newValue {
                allToDo.append(id)
            } else {
                allToDo.removeAll { $0 == id }
            }
            UserDefaults.standard.set(allToDo, forKey: "ToDoPeaks")
        }
    }

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
