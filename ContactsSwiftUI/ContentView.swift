//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Константин Прокофьев on 23.09.2021.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        NavigationView {
            VStack{
                ContactList(person: persons)
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
