//
//  DaysRemaining.swift
//  Memento mori
//
//  Created by lars on 07/08/2020.
//

import SwiftUI

// this must be changed to take the calculated number
var daysRemaining: Int = 16060

struct DaysRemaining: View {
    var body: some View {
        
        VStack {
            Text("Days remaining")
            Text("\(daysRemaining)")
        }
    }
}

struct DaysRemaining_Previews: PreviewProvider {
    static var previews: some View {
        DaysRemaining()
    }
}
