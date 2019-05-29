//
//  Symptoms.swift
//  blpInnovationProject
//
//  Created by Dan Menza on 5/9/19.
//  Copyright © 2019 Dan Menza. All rights reserved.
//

import Foundation

open class Symptom {
    let displayName: String
    let id: Int
    init(displayName: String, id: Int) {
        self.displayName = displayName
        self.id = id
    }
}

enum SymptomProvider {
    static let masterList: [Symptom] = [Symptom(displayName: "Toothache", id: 1008),
                                         Symptom(displayName: "Hallucination", id: 976),
                                         Symptom(displayName: "Eye redness", id: 33),
                                         Symptom(displayName: "Bone fracture", id: 156),
                                         Symptom(displayName:  "Earache", id: 87),
                                         Symptom(displayName: "Fever", id: 11),
                                         Symptom(displayName: "Sore throat", id: 13),
                                         Symptom(displayName: "Skin redness", id: 61),
                                         Symptom(displayName: "Blackhead", id: 24),
                                         Symptom(displayName: "Dry mouth", id: 272)]
}

//struct diagnosisResponse: Codable {
//    <#fields#>
//}

///https://dwww.carecredit.com/doctor-locator/service/NativeApp.php?Lat=41.0411194&Long=-73.541744&Radius=5&Profession=129&Specialty%5B%5D=171&Page=1&Sort=D
