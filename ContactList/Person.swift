//
//  Person.swift
//  ContactList
//
//  Created by xubuntus on 03.02.2022.
//

import Foundation

struct Person: Identifiable {
    var id = UUID()
    let firstname: String
    let lastname: String
    let email: String
    let phone: String
    
    var name: String {
        "\(firstname) \(lastname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let firstnames = DataManager.shared.firstnames.shuffled()
        let lastnames = DataManager.shared.lastnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let personCount = min(
            firstnames.count,
            lastnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<personCount {
            let person = Person(
                firstname: firstnames[index],
                lastname: lastnames[index],
                email: emails[index],
                phone: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
