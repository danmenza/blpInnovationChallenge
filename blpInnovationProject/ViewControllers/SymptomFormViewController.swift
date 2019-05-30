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
    @IBOutlet public var scrollView: UIScrollView!
    
    public var imageToggle: Bool = false
    public var symptomsList = SymptomProvider.masterList
    public var symptomImage: UIImage!
    
    public var yearOfBirth: Int!
    public var gender: String!
    public var userSymptoms = [Int]()
    
    public var checked = UIImage(named: "svgRadioBtn")
    public var unchecked = UIImage(named: "svgCheckbox")
    public var logoImage = UIImage(named: "careCreditMarkRevWithShadow")

    override open func viewDidLoad() {
        super.viewDidLoad()
        logo.image = logoImage
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: scrollView.contentSize.height)
        scrollView.isScrollEnabled = true
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction public func didSelectSymptomSearch() {
        let bornInt = Int(bornField.text!)
        yearOfBirth = bornInt
        gender = genderField.text
        let encodedArray = "\(userSymptoms)".addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
        let token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6ImRhbi5tZW56YUBzeWYuY29tIiwicm9sZSI6IlVzZXIiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9zaWQiOiIyNDM0IiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy92ZXJzaW9uIjoiMTA5IiwiaHR0cDovL2V4YW1wbGUub3JnL2NsYWltcy9saW1pdCI6IjEwMCIsImh0dHA6Ly9leGFtcGxlLm9yZy9jbGFpbXMvbWVtYmVyc2hpcCI6IkJhc2ljIiwiaHR0cDovL2V4YW1wbGUub3JnL2NsYWltcy9sYW5ndWFnZSI6ImVuLWdiIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9leHBpcmF0aW9uIjoiMjA5OS0xMi0zMSIsImh0dHA6Ly9leGFtcGxlLm9yZy9jbGFpbXMvbWVtYmVyc2hpcHN0YXJ0IjoiMjAxOS0wNS0xNiIsImlzcyI6Imh0dHBzOi8vYXV0aHNlcnZpY2UucHJpYWlkLmNoIiwiYXVkIjoiaHR0cHM6Ly9oZWFsdGhzZXJ2aWNlLnByaWFpZC5jaCIsImV4cCI6MTU1OTE3MTk4NCwibmJmIjoxNTU5MTY0Nzg0fQ.zpqVdwqRMxuEHgH_unoLMQTYDyooywzBd04hH2rD-Kw"
        
        let urlString = URL(string: "https://healthservice.priaid.ch/diagnosis?token=\(token)&symptoms=\(encodedArray!)&gender=\(gender!)&year_of_birth=\(yearOfBirth!)&language=en-gb")

        if  let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print("error occurred")
                } else {
                    if let usableData = data {
                        do {
                            let jsonDecode = JSONDecoder()
                            let json = try jsonDecode.decode([DiagnosisResponse].self, from: usableData)
                            
                        } catch {
                            print(error.localizedDescription)
                        }
                    }
                }
            }
            task.resume()
        }
        tapSelectSymptomSearch()
    }
    
    public func tapSelectSymptomSearch() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Locations", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "LocationsViewController")
        self.present(newViewController, animated: true, completion: nil)
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "symptomCell") as! SymptomsCell
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        let symptom = symptomsList[indexPath.row]
        cell.symptom.text = symptom.displayName
        cell.symptomSelected.image = unchecked
        tableView.delegate = self
        tableView.dataSource = self
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! SymptomsCell
        cell.selectionStyle = .none
        if cell.symptomSelected.image == unchecked {
            let symptom = symptomsList[indexPath.row].id
            cell.symptomSelected.image = checked
            userSymptoms.append(symptom)
        } else {
            cell.symptomSelected.image = unchecked
            userSymptoms.remove(at: indexPath.row)
        }
    }
}

