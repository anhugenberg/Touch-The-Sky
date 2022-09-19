//
//  RectangleImage.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/19/22.
//

import SwiftUI

struct RectangleImage: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .shadow(radius: 7)
    }
}

struct RectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(image: Image("turtlerock"))
    }
}
