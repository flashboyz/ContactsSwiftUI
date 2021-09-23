//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Константин Прокофьев on 23.09.2021.
//

import SwiftUI

struct ContentView: View {
    @Binding var isPresented: Bool
    let persons = Person.getContactList()
    
    var body: some View {
        NavigationView {
            TabView {
                VStack{
                    ContactList(person: persons)
                }
                .tabItem {
                    VStack {
                        Image(systemName: "person.3.sequence.fill")
                        Text("Contacts")
                    }
                }
                NumbersView(isPresented: $isPresented, person: Person.getContactList())
                    .tabItem{
                        VStack {
                            Image(systemName: "phone.circle.fill")
                            Text("Numbers")
                        }
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isPresented: .constant(false))
    }
}
