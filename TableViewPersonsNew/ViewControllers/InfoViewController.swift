//
//  InfoViewController.swift
//  TableViewPersonsNew
//
//  Created by Sergey Kosichkin on 16.12.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = "Phone: " + person.info.phoneNumber
        emailLabel.text = "Email: " + person.info.email
    }


}

