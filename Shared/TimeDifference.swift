//
//  TimeDifference.swift
//  Memento mori
//
//  Created by lars on 16/08/2020.
//

import SwiftUI

struct TimeDifference: View {
    
    @State private var wakeUp = Date()
    
    var body: some View {
//        let formatter = DateComponentsFormatter()
//            formatter.unitsStyle = .abbreviated
//            formatter.allowedUnits = [.year, .month, .day]
//        let dateString = formatter.string(from: Date())
        
        return DatePicker("Please enter a date",
                          selection: $wakeUp, displayedComponents:
                            .hourAndMinute)
    }
}

////let calendar2 = Calendar.current
////let rightNow2 = Date()
////let formatter = DateComponentsFormatter()
////let startDate2 = calendar2.date(from: DateComponents(year: 1973, month: 06, day: 17))!
////let endDate2 = calendar2.date(from: DateComponents(year: 2060, month: 10, day: 15))!
////
////struct TimeDifference: View {
////    var body: some View {
//
//
//
// //       let formatter = DateComponentsFormatter()
////        formatter.unitsStyle = .abbreviated
////        formatter.allowedUnits = [.year, .month, .day]
//
//let lifespan = formatter.string(from: dateComponents, to: endDate!)!
//
//      //      print(lifespan) // prints: 4 years, 5 months, 9 days
//        Text("Lifespan is \(lifespan)")
//        }
//
//
//
//
//}
//
//let lifespan = formatter.string(from: startDate2, to: endDate2)!
//struct TimeDifference_Previews: PreviewProvider {
//    static var previews: some View {
//        TimeDifference()
//    }
//}




struct TimeDifference_Previews: PreviewProvider {
    static var previews: some View {
        TimeDifference()
    }
}
