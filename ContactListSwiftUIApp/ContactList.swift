//
//  ContactList.swift
//  ContactListSwiftUIApp
//
//  Created by MacBook on 19.06.2021.
//

import SwiftUI

struct ContactList: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                VStack {
                    NavigationLink(destination: DetailContact(person: person)){
                    Text(person.fullName)
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(persons: Person.getContactList())
    }
}
