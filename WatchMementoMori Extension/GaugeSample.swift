//
//  GaugeSample.swift
//  WatchMementoMori Extension
//
//  Created by lars on 18/08/2020.
//

import SwiftUI
import ClockKit

struct GaugeSample: View {
    @State var acidity = 5.8
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Garden Soil Acidity")
                .foregroundColor(.green)
            Gauge(value: acidity, in: 3...10) {
                Image(systemName: "drop.fill")
                    .foregroundColor(.green)
            } currentValueLabel: {
                Text("\(acidity, specifier: "%.1f")")
            } minimumValueLabel: {
                Text("3")
            } maximumValueLabel: {
                Text("10")
            }
            .gaugeStyle(
                LinearGaugeStyle(
                    tint: Gradient(colors: [.orange, .yellow, .green, .blue, .purple])
                )
            )
        }
    }
}



struct ProgressSample: View {
    var body: some View {
        ProgressView(value: 0.7) {
            Image(systemName: "music.note")
        }
        .progressViewStyle(CircularProgressViewStyle())
    }
}


import SwiftUI
import ClockKit

struct ProgressSample2: View {
    var body: some View {
        ProgressView(value: 0.7) {
            Image(systemName: "music.note")
        }
        .progressViewStyle(CircularProgressViewStyle(tint: .red))
    }
}

struct GaugeSample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CLKComplicationTemplateGraphicRectangularFullView(GaugeSample())
                .previewContext()
            
            CLKComplicationTemplateGraphicCircularView(ProgressSample())
                .previewContext()
            
            CLKComplicationTemplateGraphicCircularView(ProgressSample2())
                        .previewContext()
        }
    }
}
