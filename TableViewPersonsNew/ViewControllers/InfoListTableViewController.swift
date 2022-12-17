//
//  InfoListTableViewController.swift
//  TableViewPersonsNew
//
//  Created by Sergey Kosichkin on 17.12.2022.
//

import UIKit

class InfoListTableViewController: UITableViewController{
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let tabBarMainVC = tabBarController as? TabBarViewController else { return }
        persons = tabBarMainVC.persons
        
//        UITableViewHeaderFooterView.appearance().tintColor = .gray
        
        
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        view.tintColor = UIColor.gray
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.black
//        header.textLabel?.font.pointSize = 15
        
//        UILabel.appearance(whenContainedInInstancesOf: [UITableViewHeaderFooterView.self]).font = UIFont.boldSystemFont(ofSize: 15)
        
        
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].name + " " + persons[section].secondName
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.text = persons[indexPath.section].info.phoneNumber
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = persons[indexPath.section].info.email
            content.image = UIImage(systemName: "mail")
        }
//        content.text = indexPath.row == 0 ? persons[indexPath.section].info.phoneNumber : persons[indexPath.section].info.email
        
        cell.contentConfiguration = content
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
