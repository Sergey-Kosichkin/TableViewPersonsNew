//
//  PersonsTableViewController.swift
//  TableViewPersonsNew
//
//  Created by Sergey Kosichkin on 17.12.2022.
//

import UIKit





class PersonsTableViewController: UITableViewController {
    
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let tabBarMainVC = tabBarController as? TabBarViewController else { return }
        persons = tabBarMainVC.persons
        
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.name + " " + person.secondName
        cell.contentConfiguration = content
        
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        infoVC.person = persons[indexPath.row]
    }
}
