//
//  NumbersView.swift
//  ContactList
//
//  Created by xubuntus on 04.02.2022.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section(
                    header: Text(person.name)
                ) {
                    PhoneEmailBlockView(person: person)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getContactList())
    }
}
