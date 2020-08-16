//
//  DaysRemaining.swift
//  Memento mori
//
//  Created by lars on 07/08/2020.
//

import SwiftUI

struct DaysRemainingWidgetView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                HStack {
                    Text("☥")
                        .font(.title2)
                    Text("\(totalDaysYears!)y \(totalDaysMonths!)m \(totalDaysDays!)d")
                        .font(.body)
                    
                }
                Text("(\(totalDays!) days)")
            }
            Spacer()
            VStack {
                HStack {
                    
                    Image(systemName: "heart.slash")
                    Text("\(livedDaysYears!)y \(livedDaysMonths!)m \(livedDaysDays!)d")
                        .font(.body)
                }
                Text("(\(livedDays!) days)")
                    .font(.body)
            }
            Spacer()
            VStack {
                HStack {
                    
                    Image(systemName: "bolt.heart")
                    Text("\(remainingDaysYears!)y \(remainingDaysMonths!)m \(remainingDaysDays!)d")
                }
                Text("(\(remainingDays!))")
                    .font(.body)
            }
            Spacer()
        }
        
    }
}

struct DaysRemainingWidgetView_Previews: PreviewProvider {
    static var previews: some View {
        DaysRemainingWidgetView()
    }
}
