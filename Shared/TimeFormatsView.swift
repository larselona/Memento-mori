//
//  TimeFormatsView.swift
//  Memento mori
//
//  Created by lars on 08/08/2020.
//

import SwiftUI

struct TimeFormatsView: View {
    var body: some View {
        VStack {
         
            VStack {
                VStack {
                    Text("☥")
                        .font(.title2)
                    Text("Total number of days")
                }
                Text("\(totalDaysYears!)y \(totalDaysMonths!)m \(totalDaysDays!)d")
                    .font(.largeTitle)
                Text("(\(totalDays!) days)")
            }
            Spacer()
            VStack {
                VStack {
                    Image(systemName: "heart.slash")
                    Text("Lived number of days")
                }
                Text("\(livedDaysYears!)y \(livedDaysMonths!)m \(livedDaysDays!)d")
                    .font(.largeTitle)
                Text("(\(livedDays!) days)")
            }
            Spacer()
            VStack {
                VStack {
                    Image(systemName: "bolt.heart")
                    Text("Remaining number of days")
                }
                Text("\(remainingDaysYears!)y \(remainingDaysMonths!)m \(remainingDaysDays!)d")
                    .font(.largeTitle)
                Text("(\(remainingDays!) days)")
                 
               
            }
            Spacer()
        }
        
    }
}

struct TimeFormatsView_Previews: PreviewProvider {
    static var previews: some View {
        TimeFormatsView()
    }
}
