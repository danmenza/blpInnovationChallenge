//
//  CCProviders.swift
//  blpInnovationProject
//
//  Created by Dan Menza on 5/28/19.
//  Copyright © 2019 Dan Menza. All rights reserved.
//

import Foundation

open class CCProviders {
    let zip: Int
    let radius: Int
    let profession: Int
    let specialty: Int
    
    init(zip: Int, radius: Int, profession: Int, specialty: Int) {
        self.zip = zip
        self.radius = radius
        self.profession = profession
        self.specialty = specialty
    }
}
