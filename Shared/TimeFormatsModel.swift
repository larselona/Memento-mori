//
//  TimeFormatsModel.swift
//  Memento mori
//
//  Created by lars on 08/08/2020.
//

// In the end NOT based off: https://stackoverflow.com/questions/24723431/swift-days-between-two-nsdates & https://www.donnywals.com/calculating-the-difference-in-hours-between-two-dates-in-swift/ but rather a Sean Allen tutorial on the calendar function in Swift on YouTube https://www.youtube.com/watch?v=GPtVfSC35T8
// Also see this great reference: https://en.proft.me/2020/03/4/working-dates-swift/
// To make the output years,months,weeks, days: https://www.thetopsites.net/article/52710144.shtml
// This gave me the final key to format the output: https://www.youtube.com/watch?v=odR0YUHte7g

import UIKit

let calendar = Calendar.current
let rightNow = Date()

//Create Date from components
let dateComponents = DateComponents(calendar: calendar, year: 1973, month: 6, day: 16)
let composedDate = calendar.date(from: dateComponents)

let endComponents = DateComponents(calendar: calendar, year: 2060, month: 10, day: 15)
let endDate = calendar.date(from: endComponents)

// This is my first attempt, which is highly customizable because the year, month, day components are returned separately
////Days since our original date (composed date)
let totalDays = calendar.dateComponents([.day], from: composedDate!, to: endDate!).day
//let totalDaysYears = calendar.dateComponents([.year, .month, .day], from: composedDate!, to: endDate!).year
//let totalDaysMonths = calendar.dateComponents([.year, .month, .day], from: composedDate!, to: endDate!).month
//let totalDaysDays = calendar.dateComponents([.year, .month, .day], from: composedDate!, to: endDate!).day

// An improved way of doing this is in the DatesTest file. It needs to be implemented here!

// This is the correct way of doing it:
var totalYMD: String {
    let formatter = DateComponentsFormatter()
    formatter.unitsStyle = .abbreviated
    formatter.allowedUnits = [.year, .month, .day]
    let lifespan = formatter.string(from: composedDate!, to: endDate!)!
    return (lifespan) // prints: 4 years, 5 months, 9 days
}

let livedDays = calendar.dateComponents([.day], from: composedDate!, to: rightNow).day
//let livedDaysYears = calendar.dateComponents([.year, .month, .day], from: composedDate!, to: rightNow).year
//let livedDaysMonths = calendar.dateComponents([.year, .month, .day], from: composedDate!, to: rightNow).month
//let livedDaysDays = calendar.dateComponents([.year, .month, .day], from: composedDate!, to: rightNow).day

var livedYMD: String {
    let formatter = DateComponentsFormatter()
    formatter.unitsStyle = .abbreviated
    formatter.allowedUnits = [.year, .month, .day]
    let lifespan = formatter.string(from: composedDate!, to: rightNow)!
    return (lifespan) // prints: 4 years, 5 months, 9 days
}

let remainingDays = calendar.dateComponents([.day], from: rightNow, to: endDate!).day
//let remainingDaysYears = calendar.dateComponents([.year, .month, .day], from: rightNow, to: endDate!).year
//let remainingDaysMonths = calendar.dateComponents([.year, .month, .day], from: rightNow, to: endDate!).month
//let remainingDaysDays = calendar.dateComponents([.year, .month, .day], from: rightNow, to: endDate!).day

var remainingYMD: String {
    let formatter = DateComponentsFormatter()
    formatter.unitsStyle = .abbreviated
    formatter.allowedUnits = [.year, .month, .day]
    let lifespan = formatter.string(from: rightNow, to: endDate!)!
    return (lifespan) // prints: 4 years, 5 months, 9 days
}

// I would still like to make this work, as it requires less code. On the other hand the output is less flexible for formatting.
//let formatter = DateComponentsFormatter()
//       formatter.unitsStyle = .abbreviated
//       formatter.allowedUnits = [.year, .month, .day]







