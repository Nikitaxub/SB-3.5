//
//  ContactsView.swift
//  ContactList
//
//  Created by xubuntus on 04.02.2022.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(
                    person.name,
                    destination: ContactInfoView(person: person)
                )
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getContactList())
    }
}
