//
//  Home.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/26/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            VStack{
                VStack{
                    Text("Touch")
                        .font(.custom("Quicksand", size: 60))
                    Text("the")
                        .font(.custom("Quicksand", size: 40))
                    Text("Sky")
                        .font(.custom("Quicksand", size: 60))
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(.top, 210)
            }
            .background(
                    Image("homeimg")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                )
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
