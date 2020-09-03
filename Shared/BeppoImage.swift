//
//  BeppoImage.swift
//  Memento mori
//
//  Created by Lars Isdahl on 02/09/2020.
//

import SwiftUI

struct BeppoImage: View {
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea(.all)
        Image("beppo")
            .resizable()
            .aspectRatio(contentMode: .fit)
        }
        
    }
}

struct BeppoImage_Previews: PreviewProvider {
    static var previews: some View {
        BeppoImage()
    }
}
