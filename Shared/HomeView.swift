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
                
                VStack {
                ColumnLayout()
                }
                // to identify current index:
                .tag(1)
                // custom tab icon:
                .tabItem {
                    Image(systemName: "house.fill")
                }
                
                   
                    VStack {
               UserInputView()
                }
                    
                    // to identify current index:
                    .tag(2)
                    // custom tab icon:
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                VStack {
               MomoQuote()
                }
                    
                    .tag(3)
                    .tabItem {
                        Image(systemName: "suit.heart.fill")
                    }
                VStack {
               BeppoImage()
                }
                    .tag(4)
                    .tabItem {
                        Image(systemName: "gear")
                    }
                VStack {
                    EpicurusPoints()
                }
                    .tag(5)
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
                        Text("Column")
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
                        Text("User")
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
                        Text("Quote")
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
                        Text("Beppo")
                        Image(systemName: "person.fill")
                        
                    }
                })
                
                Button(action: {
                    withAnimation{
                        //changing index
                        index = 5
                    }
                    
                }, label: {
                    HStack {
                        Text("Epicurus")
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
