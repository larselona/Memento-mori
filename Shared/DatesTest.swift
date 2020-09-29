//
//  DatesTest.swift
//  Memento mori
//
//  Created by Lars Isdahl on 10/09/2020.
//

import SwiftUI

func dateYMD(date1: Date, date2: Date) -> String {
    let formatter = DateComponentsFormatter()
    formatter.unitsStyle = .full
    formatter.allowedUnits = [.year, .month, .day]
    let lifespan = formatter.string(from: date1, to: date2)!
    return (lifespan)
}

func todaysDateYMD(todaysDate: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .none
    formatter.locale = Locale(identifier: "en_EN")
    let today = formatter.string(from: todaysDate)
    return (today)
}

var totalTime = dateYMD(date1: composedDate!, date2: endDate!)
var spentTime = dateYMD(date1: composedDate!, date2: rightNow)
var remainingTime = dateYMD(date1: rightNow, date2: endDate!)
var todaysDate = todaysDateYMD(todaysDate: Date())
var lastDate = todaysDateYMD(todaysDate: endDate!)
var birthDate = todaysDateYMD(todaysDate: composedDate! )

struct DatesTest: View {
    var body: some View {
        VStack {
            Text("\(birthDate)")
            Text("\(todaysDate)")
            Text("\(lastDate)")
            Text("\(totalTime)")
            Text("\(spentTime)")
            Text("\(remainingTime)")
            
        }
    }
}

struct DatesTest_Previews: PreviewProvider {
    static var previews: some View {
        DatesTest()
    }
}
