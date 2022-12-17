//
//  Person.swift
//  TableViewPersonsNew
//
//  Created by Sergey Kosichkin on 17.12.2022.
//

struct Person {
    let name: String
    let secondName: String
    let info: Info
    
    static func createPersons(withNames names: Set<String>,
                              secondNames: Set<String>,
                              phoneNumbers: Set<String>,
                              andEmails emails: Set<String>) -> [Person] {
        var persons: [Person] = []
        
        for ((name, secondName),
             (phoneNumber, email)) in zip(zip(names, secondNames),
                                          zip(phoneNumbers, emails)) {
            
            persons.append(Person(name: name,
                                  secondName: secondName,
                                  info: Info(phoneNumber: phoneNumber,
                                             email: email)))
        }
        
        return persons
    }
}

struct Info {
    let phoneNumber: String
    let email: String
}

