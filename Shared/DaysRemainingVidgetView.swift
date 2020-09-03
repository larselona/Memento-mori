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
                    
                    Text("\(totalYMD)")
                }
                Text("(\(totalDays!) days)")
                    .font(.footnote)
                    
                
            }
            Spacer()
            
            VStack {
                HStack {
                    
                    Image(systemName: "heart.slash")
                        .foregroundColor(.red)
                    
                    Text("\(livedYMD)")
                       
                }
                
                Text("(\(livedDays!) days)")
                    .font(.footnote)
            }
            Spacer()
            
            VStack {
                HStack {
                    
                    Image(systemName: "bolt.heart")
                        .foregroundColor(.green)
                    Text("\(remainingYMD)")
                }
                Text("(\(remainingDays!) days)")
                    .font(.footnote)
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
