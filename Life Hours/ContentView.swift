//
//  ContentView.swift
//  Life Hours
//
//  Created by Oncu Can on 9.01.2023.
//
import SwiftUI

struct ContentView: View {
    @State private var birthday: String = ""
    let lifeExpectancy: Int = 690000
    
    var body: some View {
        VStack {
            TextField("Enter your birthday (MMDDYYYY)", text: $birthday)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Life hours left: \(lifeHoursLeft())")
        }
    }
    
    func lifeHoursLeft() -> Int {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMddyyyy"
        guard let birthdayDate = dateFormatter.date(from: birthday) else { return 0 }
        let currentDate = Date()
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: birthdayDate, to: currentDate)
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


