//
//  ContactInfoView.swift
//  ContactList
//
//  Created by xubuntus on 04.02.2022.
//

import SwiftUI

struct ContactInfoView: View {
    let person: Person
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(20)
                Spacer()
            }
            PhoneEmailBlockView(person: person)
        }
        .navigationTitle(person.name)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            HStack {
                Image(systemName: "chevron.backward")
                Text("Back")
            }
        })
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(person: Person.getContactList()[0])
    }
}
