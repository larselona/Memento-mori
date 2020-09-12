//
//  EpicurusPoints.swift
//  Memento mori
//
//  Created by Lars Isdahl on 02/09/2020.
//

import SwiftUI

struct EpicurusPoints: View {
    let points = """
    The end of your existence is inevitable. The question is whether or not you should fear it.

    Epicurus, and many others besides, have argued that there are reasons not to fear death.

    His argument, essentially, is this: when you are alive, death is nothing. When you are dead, life is nothing.

    The argument is meant to relieve only some of the fear of death and to give you a new vista from which to enjoy your own fleeting time on Earth. Banishing all fear of death would turn you into something barely human, as fanatics the world over have amply demonstrated.

    Philosophy can be a useful meditation on what it is to live well. Thinking about one’s own death can focus one’s attention on what it is that makes life so valuable.
    """

    
    var body: some View {
        ZStack {
            Image("calmWater")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .blendMode(.darken)
              //  .opacity(0.8)
            
            VStack{
                Text("\(points)")
                    .font(.body)
                    .foregroundColor(Color("BackgroundBlue"))
                
                
            }
            .padding([.leading, .trailing], 60)
           
        }
        
    }
}

struct EpicurusPoints_Previews: PreviewProvider {
    static var previews: some View {
        EpicurusPoints()
       
            
    }
}
