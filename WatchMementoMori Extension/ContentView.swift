//
//  ContentView.swift
//  WatchMementoMori Extension
//
//  Created by lars on 16/08/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // ScrollView implementation
        //        ScrollView {
        //        VStack {
        //            FrontImage()
        //           //     .scaledToFit()
        //            Spacer()
        //            Text("Memento mori")
        //                .font(.title)
        //
        //            Spacer()
        //            TimeFormatsView()
        //                .padding(.top)
        //
        //            Havamal()
        //                .padding(/*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
        //        }
        //        }
        
        //TabView implementation
        
        TabView {
            // Text("The First Tab")
            VStack {
                Text("Memento mori")
                    .font(.title2)
                FrontImage()
            }
            .tabItem {
//                    Image(systemName: "1.square.fill")
//                    Text("First")
            }
            ScrollView {
                TimeFormatsView()
                
            }
            .tabItem {
                //                    Image(systemName: "1.square.fill")
                //                    Text("First")
            }
            Havamal()
                .tabItem {
//                    Image(systemName: "1.square.fill")
//                    Text("First")
                }
//            Text("Another Tab")
//                .tabItem {
//                    Image(systemName: "2.square.fill")
//                    Text("Second")
//                }
//            Text("The Last Tab")
//                .tabItem {
//                    Image(systemName: "3.square.fill")
//                    Text("Third")
//                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
