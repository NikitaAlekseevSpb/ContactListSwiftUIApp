//
//  ContentView.swift
//  ContactListSwiftUIApp
//
//  Created by MacBook on 19.06.2021.
//

import SwiftUI

struct ContentView: View {
     private let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            SectionContactList(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
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
