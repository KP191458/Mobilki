//
//  Place.swift
//  ParkingApp
//
//  Created by Konrad Pławik on 18/01/2020.
//  Copyright © 2020 Konrad Pławik. All rights reserved.
//

import Foundation
import SwiftUI

struct Place: Codable, Equatable, Identifiable {
    var id: UUID
    var sector: String
    var name: String
    var week: boolean_t
    var weekend: boolean_t
    var restrictions: [String]
}
