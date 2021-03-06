//
//  MomoQuote.swift
//  Memento mori
//
//  Created by Lars Isdahl on 02/09/2020.
//

import SwiftUI

struct MomoQuote: View {
    private let momoTime = """
“You see, Momo,' he [Beppo Roadsweeper] told her one day, 'it's like this. Sometimes, when you've a very long street ahead of you, you think how terribly long it is and feel sure you'll never get it swept.'
He gazed silently into space before continuing. 'And then you start to hurry,' he went on. 'You work faster and faster, and every time you look up there seems to be just as much left to sweep as before, and you try even harder, and you panic, and in the end you're out of breath and have to stop - and still the street stretches away in front of you. That's not the way to do it.'
He pondered a while. Then he said, 'You must never think of the whole street at once, understand? You must only concentrate on the next step, the next breath, the next stroke of the broom, and the next, and the next. Nothing else.'
Again he paused for thought before adding, 'That way you enjoy your work, which is important, because then you make a good job of it. And that's how it ought to be.'
There was another long silence. At last he went on, 'And all at once, before you know it, you find you've swept the whole street clean, bit by bit. What's more, you aren't out of breath.' He nodded to himself. 'That's important, too,' he concluded.”

― Michael Ende, Momo
"""
    var body: some View {
        Text("\(momoTime)")
            .padding()
            
    }
}

struct MomoQuote_Previews: PreviewProvider {
    static var previews: some View {
        MomoQuote()
    }
}
