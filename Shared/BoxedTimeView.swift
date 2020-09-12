//
//  FramesTimeView.swift
//  Memento mori
//
//  Created by Lars Isdahl on 01/09/2020.
//

import SwiftUI

struct FramesTimeView: View {
    var body: some View {
        // #if os (iOS)
        VStack {
            
            ZStack {
                Color("CardMiddleBlue").edgesIgnoringSafeArea(.all)
//                VStack {
//                    Text("Total number of days")
//                }
                HStack {
                    Text("☥")
                        
                        .font(.largeTitle)
                        .foregroundColor(Color("FontLightBlue"))
                        .padding()
                    VStack {
                        #if os (iOS)
                        Text("Total number of days")
                        #endif
                        
                        Text("\(totalYMD)")
                            .font(.title3)
                            .padding()
                        Text("(\(totalDays!) days)")
                    }
                }
            }
            .foregroundColor(Color("FontWhite"))
            //            .frame(minWidth: 0, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            //
            //
            //             Spacer()
            
            
            ZStack {
                Color("CardMiddleBlue").edgesIgnoringSafeArea(.all)
                VStack {
                    VStack {
                        Image(systemName: "heart.slash")
                            .font(.largeTitle)
                            .foregroundColor(Color("GaugeRed"))
                            .padding()
                        #if os (iOS)
                        Text("Lived number of days")
                        #endif
                    }
                    Text("\(livedYMD)")
                        .font(.title3)
                        .padding()
                    Text("(\(livedDays!) days)")
                    
                }
                .foregroundColor(Color("FontWhite"))
            }
            //             .frame(minWidth: 0, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            //             Spacer()
            ZStack {
                Color("CardMiddleBlue").edgesIgnoringSafeArea(.all)
                VStack {
                    VStack {
                        Image(systemName: "bolt.heart")
                            .font(.largeTitle)
                            .foregroundColor(Color("GaugeGreen"))
                            .padding()
                        #if os(iOS)
                        Text("Remaining number of days")
                        #endif
                    }
                    Text("\(remainingYMD)")
                        .font(.title3)
                        .padding()
                    Text("(\(remainingDays!) days)")
                }
                .foregroundColor(Color("FontWhite"))
            }
            //             .frame(minWidth: 0, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            //             Spacer()
        }
        
        .background(LinearGradient(gradient: Gradient(colors: [Color("BackgroundDarkBlue"), Color("BackgroundBlue")]), startPoint: .top, endPoint: .bottom))
    }
}

struct FramesTimeView_Previews: PreviewProvider {
    static var previews: some View {
        FramesTimeView()
    }
}
