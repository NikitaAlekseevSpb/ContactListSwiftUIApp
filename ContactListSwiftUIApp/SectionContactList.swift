//
//  SectionContactList.swift
//  ContactListSwiftUIApp
//
//  Created by MacBook on 19.06.2021.
//

import SwiftUI

struct SectionContactList: View {
     let persons: [Person]
    
    var body: some View {
            List{
                ForEach(persons) { person in
                    Section(header: Text(person.fullName)) {
                        RowView(image: Contacts.phone.rawValue, contact: person.phoneNumber)
                        RowView(image: Contacts.email.rawValue, contact: person.email)
                    }
                }
                .textCase(.none) // отобразить имя с маленьких букв
            }
    }
}

struct SectionContactList_Previews: PreviewProvider {
    static var previews: some View {
        SectionContactList(persons: Person.getContactList())
    }
}
