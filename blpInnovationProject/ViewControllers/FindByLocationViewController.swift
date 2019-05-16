//
//  FindByLocationViewController.swift
//  blpInnovationProject
//
//  Created by Dan Menza on 5/7/19.
//  Copyright © 2019 Dan Menza. All rights reserved.
//

import UIKit

class FindByLocationViewController: UIViewController {
    
    @IBOutlet public var searchLocation: UIButton!
    @IBOutlet public var searchName: UIButton!
    @IBOutlet public var searchSymptom: UIButton!
    @IBOutlet public var searchTab: UIButton!
    @IBOutlet public var favoritesTab: UIButton!
    @IBOutlet public var searchTitle: UILabel!
    @IBOutlet public var magnifyImage: UIImageView!
    @IBOutlet public var backButton: UIBarButtonItem!
    
    @IBAction public func TapSearchSymptom() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "SymptomForm", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "SymptomFormViewController")
        self.present(newViewController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
