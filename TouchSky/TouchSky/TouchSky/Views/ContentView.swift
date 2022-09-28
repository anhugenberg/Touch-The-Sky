//
//  ContentView.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/19/22.
//

import SwiftUI

struct ContentView: View {
    @State private var tabIndex = 0
    var body: some View {
        TabView{
            Home()
                .tabItem(){
                    Image(systemName: "house")
                    Text("Home")
                }
            MapView()
                .tabItem(){
                    Image(systemName: "mappin.circle")
                    Text("Map")
                }
            ListTab()
                .tabItem(){
                    Image(systemName: "list.bullet")
                    Text("List")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

