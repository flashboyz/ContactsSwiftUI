//
//  ContactList.swift
//  ContactsSwiftUI
//
//  Created by Константин Прокофьев on 23.09.2021.
//

import SwiftUI

struct ContactList: View {
    let person : [Person]
    @State private var isPresented = false
    
    var body: some View {
        List(person, id: \.self) { person in
            Button(action: { isPresented.toggle()}) {
                HStack {
                    Text(person.fullName)
                        .fontWeight(.medium)
                    Spacer()
                    VStack {
                        Image(systemName: "person.text.rectangle")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                }
                .padding()
            }
            .sheet(isPresented: $isPresented) {
                DetailsInfo(isPresented: $isPresented, person: person)
            }
        }
    }
}


struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(person: Person.getContactList())
    }
}
