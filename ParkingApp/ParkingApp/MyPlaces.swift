//
//  MyPlaces.swift
//  ParkingApp
//
//  Created by Konrad Pławik on 14/12/2019.
//  Copyright © 2019 Konrad Pławik. All rights reserved.
//

import SwiftUI

struct MyPlaces: View {
    var body: some View {
        VStack {
            Text("Moje miejsca").font(.title)
            
            List {
                /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct MyPlaces_Previews: PreviewProvider {
    static var previews: some View {
        MyPlaces()
    }
}
