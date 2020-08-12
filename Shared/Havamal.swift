//
//  Havamal.swift
//  Memento mori
//
//  Created by lars on 09/08/2020.
//

import SwiftUI

struct Havamal: View {
    var body: some View {
        Text("Deyr fé, \ndeyja frændur, \ndeyr sjálfur ið sama; \nek veit einn at aldri deyr, \ndómr um dauðan hvern.")
            .multilineTextAlignment(.center)
    }
}

struct Havamal_Previews: PreviewProvider {
    static var previews: some View {
        Havamal()
    }
}
