//
//  DetailsInfo.swift
//  ContactsSwiftUI
//
//  Created by Константин Прокофьев on 23.09.2021.
//

import SwiftUI

struct DetailsInfo: View {
    @Binding var isPresented: Bool
    let person: Person
    
    var body: some View {
        VStack{
            NavigationView{
                VStack(spacing: 30){
                    Image(systemName: "person.crop.square")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .padding()
                    HStack{
                        Image(systemName: "phone.circle.fill")
                        Text(person.phoneNumber)
                    }
                    HStack{
                        Image(systemName: "envelope.circle.fill")
                        Text(person.email)
                    }
                }
                
                .navigationTitle(person.fullName)
            }
        }
    }
}

struct DetailsInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetailsInfo(isPresented: .constant(false), person: Person(name: "Bill", surname: "Gates", email: "slsdf", phoneNumber: "123131"))
    }
}
