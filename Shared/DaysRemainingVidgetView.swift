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
                        
                }
                
                Text("(\(totalDays!) days)")
            }
            Spacer()
            VStack {
                HStack {
                    
                    Image(systemName: "heart.slash")
                        .foregroundColor(.red)
                    
                    Text("\(livedDaysYears!)y \(livedDaysMonths!)m \(livedDaysDays!)d")
                       
                }
                
                Text("(\(livedDays!) days)")
                    
            }
            Spacer()
            VStack {
                HStack {
                    
                    Image(systemName: "bolt.heart")
                        .foregroundColor(.green)
                    Text("\(remainingDaysYears!)y \(remainingDaysMonths!)m \(remainingDaysDays!)d")
                }
                Text("(\(remainingDays!))")
                    
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
