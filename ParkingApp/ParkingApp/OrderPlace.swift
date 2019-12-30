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
                    Button(action: {}) {
                        Text(" I ")
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.vertical)
                    Text(" ")
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text(" II ")
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    }
                    Text(" ")
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
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
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text(" IV ")
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.vertical)
                    Text(" ")
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text(" V ")
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .background(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    }
                    Text(" ")
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
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
                /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
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
