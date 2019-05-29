//
//  LocationList.swift
//  blpInnovationProject
//
//  Created by Dan Menza on 5/29/19.
//  Copyright © 2019 Dan Menza. All rights reserved.
//

import Foundation

open class Location {
    let practiceName: String
    let doctor: String
    let location: String
    let distance: String
    
    init (practiceName: String, doctor: String, location: String, distance: String) {
        self.practiceName = practiceName
        self.doctor = doctor
        self.location = location
        self.distance = distance
    }
}

enum LocationsList {
    static let masterList: [Location] =
        [Location(practiceName: "Connecticut Dermatology Group", doctor: "Dr. Steven Kolenik, MD", location: "1250 SUMMER ST SE 201 STAMFORD, CT 06905", distance: "1.2 MI"),
        Location(practiceName: "Comprehensive Neurology and Pain Center Of Connecticut", doctor: "", location: "999 SUMMER ST STE 100 STAMFORD, CT 06905", distance: "1.3 MI"),
        Location(practiceName: "Greenwich Medical Spa", doctor: "Dr. Mitchell Ross", location: "1285 E PUTNAM AVENUE RIVERSIDE, CT 06878", distance: "1.7 MI"),
        Location(practiceName: "Greenwich Medical Skin Care and Laser Spa", doctor: "", location: "1285 E PUTNAM AVENUE RIVERSIDE, CT 06878", distance: "1.7 MI"),
        Location(practiceName: "Julia B Sabetta MD PC", doctor: "", location: "4 DEARFIELD DR STE 203 GREENWICH, CT 06831", distance: "4.3 MI")]
}
