//
//  FrontImage.swift
//  Memento mori
//
//  Created by lars on 07/08/2020.
//

import SwiftUI

struct FrontImage: View {
    var body: some View {
        Image("nature4")
            .resizable()
            .aspectRatio(contentMode: .fit)
            
    }
}

struct FrontImage_Previews: PreviewProvider {
    static var previews: some View {
        FrontImage()
    }
}
