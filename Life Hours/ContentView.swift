//
//  ContentView.swift
//  Life Hours
//
//  Created by Oncu Can on 9.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var addBirthday: String = ""
    @State private var dateOfBirth: Date = Date()
    @State private var lifeExpectancy: Int = 692040
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Add your Birthday", text: $addBirthday)
                Button("Register") {
                    
                }.font(.title)
                    .foregroundColor(.black)
                    .background(Color.white)
                .cornerRadius(5)
                .padding()
                Spacer()
            } .textFieldStyle(.roundedBorder)
                .background(Color.orange)
            .navigationTitle("Birthday")
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
