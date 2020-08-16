//
//  TimeFormatsModel.swift
//  Memento mori
//
//  Created by lars on 08/08/2020.
//

// In the end NOT based off: https://stackoverflow.com/questions/24723431/swift-days-between-two-nsdates & https://www.donnywals.com/calculating-the-difference-in-hours-between-two-dates-in-swift/ but rather a Sean Allen tutorial on the calendar function in Swift on YouTube https://www.youtube.com/watch?v=GPtVfSC35T8
// Also see this great reference: https://en.proft.me/2020/03/4/working-dates-swift/
// To make the output years,months,weeks, days: https://www.thetopsites.net/article/52710144.shtml

import UIKit


let calendar = Calendar.current
let rightNow = Date()


//Create Date from components
let dateComponents = DateComponents(calendar: calendar, year: 1973, month: 6, day: 17)
let composedDate = calendar.date(from: dateComponents)

let endComponents = DateComponents(calendar: calendar, year: 2060, month: 10, day: 15)
let endDate = calendar.date(from: endComponents)


//Days since our original date (composed date)
let totalDays = calendar.dateComponents([.day], from: composedDate!, to: endDate!).day
let livedDays = calendar.dateComponents([.day], from: composedDate!, to: rightNow).day
let remainingDays = calendar.dateComponents([.day], from: rightNow, to: endDate!).day

//Format as years/days

//let formatter = DateComponentsFormatter()
//       formatter.unitsStyle = .abbreviated
//        formatter.allowedUnits = [.year, .month, .day]





