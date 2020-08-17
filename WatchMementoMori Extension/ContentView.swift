//
//  ContentView.swift
//  WatchMementoMori Extension
//
//  Created by lars on 16/08/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, World!")
//            .padding()
      //  Text("(\(totalDays!) days)")
        ScrollView {
        VStack {
            FrontImage()
            Spacer()
            Text("Memento mori")
                .font(.title)
            
            Spacer()
            TimeFormatsView()
                .padding(.top)
            
            Havamal()
                .padding(/*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
