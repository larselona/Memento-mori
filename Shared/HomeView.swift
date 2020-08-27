//
//  HomeView.swift
//  Memento mori
//
//  Created by Lars Isdahl on 27/08/2020.
//

import SwiftUI

struct HomeView: View {
    @State var index = 0
    
    var body: some View {
        // MARK: - TabView
        #if os(iOS)
        VStack{
            TabView(selection: $index){
                VStack {
                    FrontImage()
                    
                    Spacer()

                    TimeFormatsView()
                        .padding(.top)
                    
                    Spacer()
                    
                    Havamal()
                        .padding(/*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                }
                    .tag(0)
                    .tabItem {
                        Image(systemName: "hourglass")
                    }
                
                Color.purple
                    
                    // to identify current index:
                    .tag(1)
                    // custom tab icon:
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                Color.orange
                    
                    .tag(2)
                    .tabItem {
                        Image(systemName: "suit.heart.fill")
                    }
                Color.black
                    .tag(3)
                    .tabItem {
                        Image(systemName: "gear")
                    }
                Color.yellow
                    .tag(4)
                    .tabItem {
                        Image(systemName: "person.fill")
                    }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            // background color for the tab dots
            
            
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .interactive))
            
            // MARK: - menu
            .navigationBarItems(trailing: Menu(content: {
                
                // menu buttons
                Button(action: {
                    withAnimation{
                        //changing index
                        index = 0
                    }
                    
                }, label: {
                    HStack {
                        Text("Home")
                        Image(systemName: "hourglass")
                        
                    }
                })
                
                Button(action: {
                    withAnimation{
                        //changing index
                        index = 1
                    }
                    
                }, label: {
                    HStack {
                        Text("Love")
                        Image(systemName: "suit.heart.fill")
                        
                    }
                })
                
                Button(action: {
                    withAnimation{
                        //changing index
                        index = 2
                    }
                    
                }, label: {
                    HStack {
                        Text("Settings")
                        Image(systemName: "gear")
                        
                    }
                })
                
                Button(action: {
                    withAnimation{
                        //changing index
                        index = 3
                    }
                    
                }, label: {
                    HStack {
                        Text("Account")
                        Image(systemName: "person.fill")
                        
                    }
                })
                
                Button(action: {
                    withAnimation{
                        //changing index
                        index = 4
                    }
                    
                }, label: {
                    HStack {
                        Text("Last")
                        Image(systemName: "alarm")
                        
                    }
                })
            }
            , label: {
                Image(systemName: "line.horizontal.3")
            } ))
          
        }
        #endif
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
