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
        HStack {
            Image(systemName: "phone")
                .foregroundColor(.blue)
            Text("\(person.phone)")
        }
        HStack {
            Image(systemName: "tray")
                .foregroundColor(.blue)
            Text("\(person.email)")
        }
    }
}

struct PhoneEmailBlockView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneEmailBlockView(person: Person.getContactList()[0])
    }
}
