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
            Text("First View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("First")
                    }
                }
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
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
