//
//  ContentView.swift
//  Life Hours
//
//  Created by Oncu Can on 9.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var dateOfBirth: Date = Date()
    @State private var lifeExpectancy: Int = 692040
    
    var body: some View {
        Form {
            DatePicker("Date of Birth", selection: $dateOfBirth,
                       displayedComponents: .date)
            Text("Hours of life left: \(hoursLeft())")
        }
    }
    func hoursLeft() -> Int {
            let currentDate = Date()
            let calendar = Calendar.current
            let ageComponents = calendar.dateComponents([.year], from: dateOfBirth, to: currentDate)
            let ageInYears = ageComponents.year!
            let hoursLived = ageInYears * 8760
            return lifeExpectancy - hoursLived
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
