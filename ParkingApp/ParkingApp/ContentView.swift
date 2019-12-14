//
//  ContentView.swift
//  ParkingApp
//
//  Created by Konrad Pławik on 11/12/2019.
//  Copyright © 2019 Konrad Pławik. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            OrderPlace()
                 .tabItem {
                     VStack {
                         Image(systemName: "square.and.pencil")
                         Text("Wybór miejsca")
                     }
                 }
            .tag(0)

            MyPlaces()
                .tabItem {
                    VStack {
                        Image(systemName: "list.dash")
                        Text("Moje miejsca")
       
                    }
                }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
