//
//  PlaceDetails.swift
//  ParkingApp
//
//  Created by Konrad Pławik on 18/01/2020.
//  Copyright © 2020 Konrad Pławik. All rights reserved.
//

import SwiftUI

struct PlaceDetails: View {
    var place: Place
    var body: some View {
        VStack {
            Text(place.name)
            }.navigationBarTitle(place.name)
    }
}

struct PlaceDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PlaceDetails(place: Place.example)
        }
    }
}
