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
    let profession: String
    init(displayName: String, id: Int, profession: String) {
        self.displayName = displayName
        self.id = id
        self.profession = profession
    }
}

enum SymptomProvider {
    static let masterList: [Symptom] = [Symptom(displayName: "Toothache", id: 1008, profession: "Dental"),
                                        Symptom(displayName: "Hallucination", id: 976, profession: ""),
                                        Symptom(displayName: "Eye redness", id: 33, profession: "Vision"),
                                        Symptom(displayName: "Bone fracture", id: 156, profession: "Specialists"),
                                        Symptom(displayName:  "Earache", id: 87, profession: "Hearing"),
                                        Symptom(displayName: "Fever", id: 11, profession: "Primary Care/Clinics"),
                                        Symptom(displayName: "Sore throat", id: 13, profession: "Primary Care/Clinics"),
                                        Symptom(displayName: "Skin redness", id: 61, profession: "Cosmetic"),
                                        Symptom(displayName: "Blackhead", id: 24, profession: "Cosmetic"),
                                        Symptom(displayName: "Dry mouth", id: 272, profession: "Sleep")]
}

struct DiagnosisResponse: Codable {
    var Issue: Issue
    var Specialisation: [Specialisation]
}

class Issue: Codable {
    let ID: Int
    let Name: String
    let Accuracy: Double
    let Icd: String
    let IcdName: String
    let ProfName: String
    let Ranking: Int
}

class Specialisation: Codable {
    let ID: Int
    let Name: String
    let SpecialistID: Int
}

///https://dwww.carecredit.com/doctor-locator/service/NativeApp.php?Lat=41.0411194&Long=-73.541744&Radius=5&Profession=129&Specialty%5B%5D=171&Page=1&Sort=D
