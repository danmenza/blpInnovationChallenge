//
//  LoginViewController.swift
//  blpInnovationProject
//
//  Created by Dan Menza on 5/7/19.
//  Copyright © 2019 Dan Menza. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet public var validUsername: UILabel!
    @IBOutlet public var validPassword: UILabel!
    
    @IBOutlet public var username: UITextField!
    @IBOutlet public var password: UITextField!
    
    @IBOutlet public var locations: UIButton!
    @IBOutlet public var login: UIButton!
    @IBOutlet public var thumbprint: UIButton!
    @IBOutlet public var register: UIButton!
    @IBOutlet public var terms: UIButton!
    @IBOutlet public var contactUs: UIButton!
    
    @IBOutlet public var iconImage: UIImageView!
    @IBOutlet public var headerImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction public func tapLocation() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "FindByLocation", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "FindByLocationViewController")
        self.present(newViewController, animated: true, completion: nil)
    }
}
