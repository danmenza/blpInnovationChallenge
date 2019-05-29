//
//  LocationsViewController.swift
//  blpInnovationProject
//
//  Created by Dan Menza on 5/28/19.
//  Copyright © 2019 Dan Menza. All rights reserved.
//

import UIKit

open class LocationCell: UITableViewCell {
    @IBOutlet public weak var practiceName: UILabel!
    @IBOutlet public weak var type: UILabel!
    @IBOutlet public weak var location: UILabel!
    @IBOutlet public weak var distance: UILabel!
    @IBOutlet public weak var arrow: UIImageView!
}

open class LocationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    @IBOutlet weak var searchResults: UINavigationBar!
    @IBOutlet public var tableView: UITableView!
    override open func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell") as! LocationCell
        cell.practiceName.text = "test"
        cell.type.text = "label1"
        cell.location.text = "label2"
        cell.distance.text = "2.0 Miles"
        cell.arrow.image = UIImage(named: "arrowNormal")
        return cell
    }
}
