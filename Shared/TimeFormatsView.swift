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
                Text("\(totalDays!)")
                    .font(.largeTitle)
            }
            Spacer()
            VStack {
                VStack {
                    Image(systemName: "heart.slash")
                    Text("Lived number of days")
                }
                Text("\(livedDays!)")
                    .font(.largeTitle)
            }
            Spacer()
            VStack {
                VStack {
                    Image(systemName: "bolt.heart")
                    Text("Remaining number of days")
                }
                Text("\(remainingDays!)")
                    .font(.largeTitle)
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
