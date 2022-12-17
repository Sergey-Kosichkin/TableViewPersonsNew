//
//  TabBarViewController.swift
//  TableViewPersonsNew
//
//  Created by Sergey Kosichkin on 17.12.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    
    let persons = Person.createPersons(withNames: names,
                                       secondNames: secondNames,
                                       phoneNumbers: phoneNumbers,
                                       andEmails: emails)
    
}
