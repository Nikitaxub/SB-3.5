//
//  PhoneEmailBlockView.swift
//  ContactList
//
//  Created by xubuntus on 04.02.2022.
//

import SwiftUI

struct PhoneEmailBlockView: View {
    let person: Person
    
    var body: some View {
        Label(person.phone, systemImage: "phone")
        Label(person.email, systemImage: "tray")
    }
}

struct PhoneEmailBlockView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneEmailBlockView(person: Person.getContactList()[0])
    }
}
