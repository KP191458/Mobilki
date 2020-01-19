//
//  OrderPlace.swift
//  ParkingApp
//
//  Created by Konrad Pławik on 14/12/2019.
//  Copyright © 2019 Konrad Pławik. All rights reserved.
//

import SwiftUI

struct OrderPlace: View {
    @State var campus = "";
    @State var sector = "";
    @ObservedObject var fetcher = ParkingFetcher();
    //let places = Bundle.main.decode([Place].self, from: "places.json")
   
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

            //NavigationLink(destination: Text("New Screen")) {
            //    Text("Press me")
            //}
            
            List {
                ForEach(fetcher.places) {place in
                    if (self.sector == place.sector){
                        NavigationLink (destination: Text(place.name)){
                            HStack {
                                Text(place.name)
                                Image(systemName: "hand.raised")
                                Spacer()
                                if ( place.week == 1 ) {
                                    Image(systemName: "largecircle.fill.circle").foregroundColor(Color.green)
                                } else {
                                    Image(systemName: "largecircle.fill.circle").foregroundColor(Color.red)
                                }
                                Image(systemName: "largecircle.fill.circle").foregroundColor(Color.green)
                            }
                        }
                    }
                }
            }
            
        }
        .padding()
    }
    
    
}



public class ParkingFetcher: ObservableObject {

    @Published var places = [Place]()
    
    init(){
        load()
    }
    
    func load() {
        let url = URL(string: "https://gist.githubusercontent.com/KP191458/d336d6af5a9fec5c57a951165b7ac1c0/raw")!
    
        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([Place].self, from: d)
                    DispatchQueue.main.async {
                        self.places = decodedLists
                    }
                }else {
                    print("No Data")
                }
            } catch {
                print ("Error")
            }
            
        }.resume()
    }
}

struct OrderPlace_Previews: PreviewProvider {
    static var previews: some View {
        OrderPlace()
    }
}
