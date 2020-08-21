//
//  ContentView.swift
//  Shared
//
//  Created by lars on 07/08/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                FrontImage()
                
                Spacer()

                TimeFormatsView()
                    .padding(.top)
                
                Spacer()
                
                Havamal()
                    .padding(/*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
            }
            .navigationBarTitle(Text("Memento mori"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
