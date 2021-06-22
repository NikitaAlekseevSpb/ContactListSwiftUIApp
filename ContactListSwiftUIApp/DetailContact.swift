//
//  DetailContact.swift
//  ContactListSwiftUIApp
//
//  Created by MacBook on 19.06.2021.
//

import SwiftUI

struct DetailContact: View {
    var person: Person
    
    
    var body: some View {
        ZStack {
            Form{ // аналог List отображает как отдельный элемент 
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Spacer()
                }
                RowView(image: Contacts.phone.rawValue, contact: person.phoneNumber)
                RowView(image: Contacts.email.rawValue, contact: person.email)
            }
        }
        .navigationTitle(person.fullName)
    }
}

struct DetailContact_Previews: PreviewProvider {
    static var previews: some View {
        DetailContact(person: Person.getContactList().first!)
    }
}

