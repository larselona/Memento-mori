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
                Text("\(totalDays!)")
                
            }
            Spacer()
            
            VStack {
                HStack {
                    
                    Image(systemName: "heart.slash")
                        .foregroundColor(.red)
                    
                    Text("\(livedYMD)")
                       
                }
                
                Text("(\(livedDays!) days)")
                    
            }
            Spacer()
            
            VStack {
                HStack {
                    
                    Image(systemName: "bolt.heart")
                        .foregroundColor(.green)
                    Text("\(remainingYMD)d")
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
