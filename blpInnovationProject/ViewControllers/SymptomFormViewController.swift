//
//  SymptomFormViewController.swift
//  blpInnovationProject
//
//  Created by Dan Menza on 5/8/19.
//  Copyright © 2019 Dan Menza. All rights reserved.
//

import UIKit

open class SymptomsCell: UITableViewCell {
     @IBOutlet public var symptom: UILabel!
     @IBOutlet public var symptomSelected: UIImageView!
}

open class SymptomFormViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet public var headerText: UILabel!
    @IBOutlet public var symptomsText: UILabel!
    @IBOutlet public var bornText: UILabel!
    @IBOutlet public var genderText: UILabel!
    @IBOutlet public var bornField: UITextField!
    @IBOutlet public var genderField: UITextField!
    @IBOutlet public var logo: UIImageView!
    
    @IBOutlet public var tableView: UITableView!
    
    public var imageToggle: Bool = false
    public var symptomsList = Symptoms()
    public var symptomImage: UIImage!
    
    public var yearOfBirth: Int!
    public var gender: String!
    public var userSymptoms = [String]()
    
    public var checked = UIImage(named: "svgRadioBtn")
    public var unchecked = UIImage(named: "svgCheckbox")
    public var logoImage = UIImage(named: "careCreditMarkRevWithShadow")

    override open func viewDidLoad() {
        super.viewDidLoad()
        logo.image = logoImage
    }
    
    @IBAction public func didSelectSymptomSearch() {
        let bornInt = Int(bornField.text!)
        yearOfBirth = bornInt
        gender = genderField.text
        
        
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "symptomCell") as! SymptomsCell
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        cell.symptom.text = symptomsList.symptomsArray[indexPath.row]
        cell.symptomSelected.image = unchecked
        tableView.delegate = self
        tableView.dataSource = self
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! SymptomsCell
        cell.selectionStyle = .none
        if cell.symptomSelected.image == unchecked {
            let symptom = symptomsList.symptomsArray[indexPath.row]
            cell.symptomSelected.image = checked
            userSymptoms.append(symptom)
        } else {
            cell.symptomSelected.image = unchecked
            userSymptoms.remove(at: indexPath.row)
        }
    }
}
