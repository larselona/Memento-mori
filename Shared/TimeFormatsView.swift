//
//  TimeFormatsView.swift
//  Memento mori
//
//  Created by lars on 08/08/2020.
//

import SwiftUI

struct TimeFormatsView: View {
    var body: some View {
       // #if os (iOS)
        VStack {
            
            VStack {
                VStack {
                    Text("☥")
                        .font(.title3)
                        .padding(1)
               
                    #if os (iOS)
                    Text("Total number of days")
                    #endif
                }
                Text("\(totalYMD)")
                    .font(.title3)
                
               Text("(\(totalDays!) days)")
            }
            Spacer()
            
            VStack {
                VStack {
                    Image(systemName: "heart.slash")
                        .foregroundColor(.red)
                        .padding(1)
                    #if os (iOS)
                    Text("Lived number of days")
                    #endif
                }
                Text("\(livedYMD)")
                    .font(.title3)
                Text("(\(livedDays!) days)")
            }
            Spacer()
        
            VStack {
                VStack {
                    Image(systemName: "bolt.heart")
                        .foregroundColor(.green)
                        .padding(1)
                    #if os(iOS)
                    Text("Remaining number of days")
                    #endif
                }
                Text("\(remainingYMD)")
                    .font(.title3)
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
