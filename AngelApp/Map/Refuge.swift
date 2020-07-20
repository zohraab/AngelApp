//
//  Refuge.swift
//  Tests
//
//  Created by helenepetitjean on 23/05/2020.
//  Copyright © 2020 helenepetitjean. All rights reserved.
//

import Foundation

struct Refuge {
    var name: String
    var adresse: String
    var horaires: String
    var isOpen: Bool
    var type: RefugeType
    var latitude: Double
    var longitude: Double
    
    enum RefugeType : String, CaseIterable, Codable, Hashable {
        case restauration = "restauration"
        case nightClub = "nightClub"
        case bar = "bar"
    }
}
