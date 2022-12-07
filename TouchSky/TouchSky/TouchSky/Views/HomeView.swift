//
//  HomeView.swift
//  TouchSky
//
//  Created by Alexa Nicole Hugenberg on 9/19/22.
//

import SwiftUI

struct HomeView: View {
    init() {
    UITabBar.appearance().backgroundColor = UIColor.white
    }
    var body: some View {
        TabView{
            ListTab()
                .tabItem(){
                    Image(systemName: "list.bullet")
                    Text("List")
                }
            MapView()
                .tabItem(){
                    Image(systemName: "mappin.circle")
                    Text("Map")
                }
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ModelData())
    }
}

