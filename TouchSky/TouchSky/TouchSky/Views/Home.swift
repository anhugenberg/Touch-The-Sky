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
//                List{
//                    NavigationLink {
//                        MapView()
//                    } label: {
//                        Image(systemName: "mappin.circle")
//                        Text("View Map")
//                    }
//                    NavigationLink {
//                        ListTab()
//                    } label: {
//                        Image(systemName: "list.bullet")
//                        Text("View List")
//                    }
//                }
//                .scrollContentBackground(.hidden)
//                .padding(.top, 150)
//                .padding(.bottom, 80)
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
