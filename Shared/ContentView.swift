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
           HomeView()
            .navigationBarTitle(Text("Memento mori"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
