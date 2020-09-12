//
//  ColumnLayout.swift
//  Memento mori
//
//  Created by Lars Isdahl on 03/09/2020.
//

import SwiftUI

struct ColumnLayout: View {
    var body: some View {
        Home()
    }
}

struct ColumnLayout_Previews: PreviewProvider {
    static var previews: some View {
        ColumnLayout()
    }
}


struct Home : View {
    
    @State var index = 0
    
    var body: some View{
        
        VStack{
            // DashBoard Grid....
            // week data..
            
            GridView(lifespan_Data: life_Data)
        }
    }
}

// Grid View....

struct GridView : View {
    
    var lifespan_Data : [CalculatedLife]
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View{
        
        LazyVGrid(columns: columns,spacing: 30){
            
            ForEach(lifespan_Data){lifespan in
                
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top))
                {
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Text(lifespan.title)
                            .foregroundColor(.white)
                        
                        Text(lifespan.data)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .lineLimit(1)
                            .padding()
                         //   .padding(.top,3.0)
                            .minimumScaleFactor(0.5)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("CardInnerBoarderBlue"), lineWidth: 1)
                                        
                                )
                        HStack{
                            Spacer(minLength: 0)
                            Text(lifespan.suggest)
                                .foregroundColor(.white)
                        }
                    }
                    .padding()
                    // image name same as color name....
                    .background(Color(lifespan.image))
                    .cornerRadius(20)
                    // shadow....
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    
                    // top Image....
                    
                    Image(lifespan.image)
                        .renderingMode(.template)
                        .foregroundColor(.white)
                        .padding()
                    .background(Color.white.opacity(0.12))
                    .clipShape(Circle())
                }
                Color("CardMiddleBlue").edgesIgnoringSafeArea(.all)
                    .cornerRadius(20)
            }
        }
        .padding(.horizontal)
        .padding(.top,25)
    }
}

// DashBoard Grid Model Data...

struct CalculatedLife : Identifiable {
    
    var id : Int
    var title : String
    var image : String
    var data: String
    var suggest : String
}

// Life expectancy data...

var life_Data = [
    
    CalculatedLife(id: 0, title: "Total lifespan", image: "heart", data: ("\(totalYMD)"), suggest: ("\(totalDays!)\ndays")),
    
    CalculatedLife(id: 1, title: "Days lived", image: "sleep", data: ("\(livedYMD)"), suggest: ("\(livedDays!)\ndays")),
    
    CalculatedLife(id: 2, title: "Days remaing", image: "energy", data: ("\(remainingYMD)"), suggest: ("\(remainingDays!)\ndays")),
    
    
]

