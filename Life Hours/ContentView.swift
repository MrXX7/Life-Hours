//
//  ContentView.swift
//  Life Hours
//
//  Created by Oncu Can on 9.01.2023.
//
import SwiftUI

struct ContentView: View {
    
    @State private var birthday: String = "Enter your birthday (MMDDYYYY)"
    let lifeExpectancy: Int = 692040
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter your birthday (MMDDYYYY)", text: $birthday)
                
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                HStack {
                    
                    LifeCard(cardText: "Hours", cardTime: String(lifeHoursLeft()), cardColor: .gray, textColor: .white)
                    LifeCard(cardText: "Days", cardTime: String(lifeDays()), cardColor: .blue, textColor: .white)
                    LifeCard(cardText: "Months", cardTime: String(lifeMonths()), cardColor: .green, textColor: .white)
                    LifeCard(cardText: "Years", cardTime: String(lifeYears()), cardColor: .orange, textColor: .white)
                } .animation(.spring(response: 1.5))
                
                HStack {
                    Image(systemName: "waveform.path.ecg")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                    Text(Date().addingTimeInterval(TimeInterval(lifeSeconds())), style: .date)
                } .padding(.leading, -190)
                VStack {
//                    SecondView(secondText: String(lifeSeconds()), secondTextColor: .white, secondColor: .red)
                    Text(Date().addingTimeInterval(TimeInterval(lifeSeconds())), style: .timer)
                        .frame(width: UIScreen.main.bounds.width, height: 40)
                        .background(Color.red).opacity(0.9)
                        .foregroundColor(.white)
                        .font(.title2)
                        .bold()
                    Spacer()
                    
                }
            } .navigationTitle("LIFE")
                .navigationBarTitleDisplayMode(.inline)
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
        
    func lifeDays() -> Int {
        lifeHoursLeft() / 24
    }
    
    func lifeMonths() -> Int {
        lifeDays() / 30
    }
    
    func lifeYears() -> Int {
        lifeMonths() / 12
    }
    func lifeSeconds() -> Int {
        lifeHoursLeft() * 3600
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


