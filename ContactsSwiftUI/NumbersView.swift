//
//  NumbersView.swift
//  ContactsSwiftUI
//
//  Created by Константин Прокофьев on 23.09.2021.
//

import SwiftUI

struct NumbersView: View {
    @Binding var isPresented: Bool
    let person : [Person]
    
    var body: some View {
        
        Button(action: { isPresented.toggle()}) {
            List(person, id: \.self) { person in
                Section {
                    HStack {
                        Image(systemName: "phone.circle.fill")
                        Text(person.phoneNumber)
                    }
                    HStack {
                        Image(systemName: "envelope.circle.fill")
                        Text(person.email)
                    }
                } header: {
                    Text(person.fullName)
                }
            }
            
        }
        }
    }

    
    struct NumbersView_Previews: PreviewProvider {
        static var previews: some View {
            NumbersView(isPresented: .constant(false), person: Person.getContactList())
        }
    }
