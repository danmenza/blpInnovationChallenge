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
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
