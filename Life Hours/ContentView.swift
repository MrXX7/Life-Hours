//
//  ContentView.swift
//  Life Hours
//
//  Created by Oncu Can on 9.01.2023.
//
import SwiftUI

struct ContentView: View {
    
    static let lifeHours = 692040
    static let lifeDays = lifeHours / 24
    static let lifeMonths = lifeDays / 30
    static let lifeYears = lifeDays / 365
    
    @State var addBirthday: String = ""
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading){
                Text("Days: \(ContentView.lifeDays)")
                Text("Months: \(ContentView.lifeMonths)")
                Text("Years: \(ContentView.lifeYears)")
                
                TextField("Add Birthday", text: $addBirthday)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
            } .font(.largeTitle)
                .navigationTitle("Human Life")
                .padding()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
