//
//  OrderPlace.swift
//  ParkingApp
//
//  Created by Konrad Pławik on 14/12/2019.
//  Copyright © 2019 Konrad Pławik. All rights reserved.
//

import SwiftUI

struct OrderPlace: View {
    @State var campus = "a";
    @State var sector = "";
    let places = Bundle.main.decode([Place].self, from: "places.json")
    
    var body: some View {
        VStack {
            Text("Wybór miejsca").font(.title)
            
            HStack() {
                Button(action: {
                    self.campus = "a"
                }) {
                    Text("Kampus A")
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                        .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                }
                Text(" ")
                Button(action: {
                    self.campus = "b"
                }) {
                    Text("Kampus B")
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                        .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                }
            }
            .padding(.top)
            
            if (campus == "a"){
                HStack() {
                    Button(action: {self.sector = "I"}) {
                        Text(" I ")
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.vertical)
                    Text(" ")
                    Button(action: {self.sector = "II"}) {
                        Text(" II ")
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    }
                    Text(" ")
                    Button(action: {self.sector = "III"}) {
                        Text(" III ")
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    }
                }
                .padding()
            }
            
            if (campus == "b"){
                HStack() {
                    Button(action: {self.sector = "IV"}) {
                        Text(" IV ")
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.vertical)
                    Text(" ")
                    Button(action: {self.sector = "V"}) {
                        Text(" V ")
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    }
                    Text(" ")
                    Button(action: {self.sector = "VI"}) {
                        Text(" VI ")
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    }
                }
                .padding()
            }

            List {
                ForEach(places) {place in
                    if (self.sector == place.sector){
                        Text(place.name)
                    }
                }
            }
            .padding(.horizontal)
        }
        .padding()
        
    }
}

struct OrderPlace_Previews: PreviewProvider {
    static var previews: some View {
        OrderPlace()
    }
}
