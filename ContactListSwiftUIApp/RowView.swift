//
//  RowView.swift
//  ContactListSwiftUIApp
//
//  Created by MacBook on 22.06.2021.
//

import SwiftUI

struct RowView: View {
    let image: String
    let contact: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(contact)
        }
    }
}


