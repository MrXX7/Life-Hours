//
//  ContentView.swift
//  Life Hours
//
//  Created by Oncu Can on 9.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var addBirthday: String = ""
    @State private var dateOfBirth: String = ""
    @State private var lifeExpectancy: Int = 692040
    
    var body: some View {
        NavigationView {
            VStack {
                    HStack {
                        TextField("Add your Birthday..", text: $addBirthday)
                        Button("Add") {
                            dateOfBirth.append(addBirthday)
                            addBirthday = ""
                        }.buttonStyle(.borderedProminent)
                            .foregroundColor(.white)
                    } .textFieldStyle(.roundedBorder)
                        .navigationTitle("Birthday")
                
                    Text ("Your Birthday: \(dateOfBirth)")
                    Spacer()
                }
                .padding()
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
