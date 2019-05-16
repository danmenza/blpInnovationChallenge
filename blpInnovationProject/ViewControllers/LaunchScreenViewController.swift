//
//  LaunchScreenViewController.swift
//  blpInnovationProject
//
//  Created by Dan Menza on 5/7/19.
//  Copyright © 2019 Dan Menza. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let storyBoard: UIStoryboard = UIStoryboard(name: "Login", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "LoginViewController")
        self.present(newViewController, animated: true, completion: nil)
    }
}
