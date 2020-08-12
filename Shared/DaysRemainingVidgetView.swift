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
            HStack {
                Text("☥")
                    .font(.title2)
                Text("\(totalDays!)")
                    .font(.body)
            }
            Spacer()
            HStack {
                
                Image(systemName: "heart.slash")
                Text("\(livedDays!)")
                    .font(.body)
            }
            Spacer()
            HStack {
                
                Image(systemName: "bolt.heart")
                Text("\(remainingDays!)")
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
