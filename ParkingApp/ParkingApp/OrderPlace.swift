//
//  OrderPlace.swift
//  ParkingApp
//
//  Created by Konrad Pławik on 14/12/2019.
//  Copyright © 2019 Konrad Pławik. All rights reserved.
//

import SwiftUI

struct OrderPlace: View {
    var body: some View {
        VStack {
            Text("Wybór miejsca").font(.title)
            Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("")) {
                Text("Kampus A").tag(1)
                Text("Kampus B").tag(2)
            }
            .padding()
            .frame(height: 100.0)
            Image("Mapki").frame(width: 250.0, height: 250.0)
            List {
                /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
}

struct OrderPlace_Previews: PreviewProvider {
    static var previews: some View {
        OrderPlace()
    }
}
