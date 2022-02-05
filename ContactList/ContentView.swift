//
//  ContentView.swift
//  ContactList
//
//  Created by xubuntus on 03.02.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            NumbersView(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
