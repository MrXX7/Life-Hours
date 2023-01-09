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
    @State private var timer: Timer?
    
    var body: some View {
        Form {
            DatePicker("Date of Birth", selection: $dateOfBirth,
                       displayedComponents: .date)
            Text("Hours of life left: \(hoursLeft())")
        }
        .onAppear(perform: startTimer)
        .onDisappear(perform: stopTimer)
    }
    func hoursLeft() -> String {
        let currentDate = Date()
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: dateOfBirth, to: currentDate)
        let ageInYears = ageComponents.year!
        let hoursLived = ageInYears * 8760
        let lifehours = lifeExpectancy - hoursLived
        
        let days = lifehours / 24
        let hours = lifehours / 1
        let minutes = lifehours * 60
        
        return String(format: "%02d days %02d hours %02d minutes", days, hours, minutes)
    }
        
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.lifeExpectancy -= 1
        }
    }
        
        func stopTimer() {
            timer?.invalidate()
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
