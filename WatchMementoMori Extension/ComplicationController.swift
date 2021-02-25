//
//  ComplicationController.swift
//  WatchMementoMori Extension
//
//  Created by lars on 16/08/2020.
//

import ClockKit
import SwiftUI


class ComplicationController: NSObject, CLKComplicationDataSource {
    
    // MARK: - Complication Configuration

    func getComplicationDescriptors(handler: @escaping ([CLKComplicationDescriptor]) -> Void) {
        let descriptors = [
            CLKComplicationDescriptor(identifier: "complication", displayName: "Memento mori", supportedFamilies: CLKComplicationFamily.allCases)
            // Multiple complication support can be added here with more descriptors
        ]
        
        // Call the handler with the currently supported complication descriptors
        handler(descriptors)
    }
    
    func handleSharedComplicationDescriptors(_ complicationDescriptors: [CLKComplicationDescriptor]) {
        // Do any necessary work to support these newly shared complication descriptors
    }

    // MARK: - Timeline Configuration
    
    func getTimelineEndDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        // Call the handler with the last entry date you can currently provide or nil if you can't support future timelines
        handler(nil)
    }
    
    func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationPrivacyBehavior) -> Void) {
        // Call the handler with your desired behavior when the device is locked
        handler(.showOnLockScreen)
    }

    // MARK: - Timeline Population
    
    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        // Call the handler with the current timeline entry
        handler(nil)
    }
    
    func getTimelineEntries(for complication: CLKComplication, after date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries after the given date
        handler(nil)
    }

    // MARK: - Sample Templates
    
    func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void) {
        // This method will be called once per supported complication, and the results will be cached
        
        // Lars - this is an attempt at adding a complication to the app:
        // The template code is copied from: https://github.com/zhumingcheng697/GuessTheNumber
        
        switch complication.family {
        
        // The code for WatchOS 7 is (based on the whale observer app in "Create complications for Apple Watch:
        
//        switch (complication.family, complication.identifier) {
//
//           case (.graphicRectangular, "SeasonData"):
//               return CLKComplicationTemplateGraphicRectangularFullView(
//                   ChartView(
//                       seriesData: data.last7DaysSightings,
//                       seriesColor: .turquoise)
//
//           case (.graphicCircular, "LogSighting"):
//               return CLKComplicationTemplateGraphicCircularStackImage(
//                   line1ImageProvider: spoutFullColorImageProvider,
//                   line2TextProvider: logSightingTextProvider)
//
//           case (.graphicCircular, _):
//               guard let station = station else { return defaultTemplate(.graphicCircular) }
//               return CLKComplicationTemplateGraphicCircularView(
//                   SightingTypeView(station: station))
//
//           case (.graphicCorner, _):
//               guard let station = station else { return defaultTemplate(.graphicCorner) }
//               return CLKComplicationTemplateGraphicCornerTextImage(
//                   textProvider: station.timeAndShortLocTextProvider,
//                   imageProvider: station.whaleActivityFullColorProvider)
//
//           case (.graphicExtraLarge, _):
//               guard let station = station else { return defaultTemplate(.graphicExtraLarge) }
//               return CLKComplicationTemplateGraphicExtraLargeCircularStackText(
//                   line1TextProvider: station.timeAndLocationTextProvider,
//                   line2TextProvider: station.shortLocationTextProvider)
//
//           default:
//               return defaultTemplate(complication.family)
//           }
        
       
        case .circularSmall:
            let tmpl = CLKComplicationTemplateCircularSmallSimpleImage()
            tmpl.imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "Complication/Circular")!)
            handler(tmpl)
            
        case .extraLarge:
            let tmpl = CLKComplicationTemplateExtraLargeSimpleImage()
            tmpl.imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "Complication/Extra Large")!)
            handler(tmpl)
            
        case .graphicBezel:
            let circularTmpl = CLKComplicationTemplateGraphicCircularImage()
            circularTmpl.imageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(named: "Complication/Graphic Bezel")!, tintedImageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Graphic Bezel")!))
            let tmpl = CLKComplicationTemplateGraphicBezelCircularText()
            tmpl.circularTemplate = circularTmpl
            tmpl.textProvider = CLKSimpleTextProvider(text: NSLocalizedString("Guess The Number", comment: ""), shortText:  NSLocalizedString("Guess", comment: ""))
            handler(tmpl)
            
        case .graphicCircular:
            let tmpl = CLKComplicationTemplateGraphicCircularImage()
            tmpl.imageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(named: "Complication/Graphic Circular")!, tintedImageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Graphic Circular")!))
            handler(tmpl)
            
        case .graphicCorner:
            let tmpl = CLKComplicationTemplateGraphicCornerTextImage()
            tmpl.imageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(named: "Complication/Graphic Corner")!, tintedImageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Graphic Corner")!))
            tmpl.textProvider = CLKSimpleTextProvider(text: NSLocalizedString("123", comment: ""), shortText:  NSLocalizedString("456", comment: ""))
            handler(tmpl)
            
        case .modularSmall:
            let tmpl = CLKComplicationTemplateModularSmallSimpleImage()
            tmpl.imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "Complication/Modular")!)
            handler(tmpl)
            
        case .utilitarianSmall:
            let tmpl = CLKComplicationTemplateUtilitarianSmallSquare()
            tmpl.imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "Complication/Utilitarian")!)
            handler(tmpl)
            
        case .utilitarianSmallFlat:
            let tmpl = CLKComplicationTemplateUtilitarianSmallFlat()
            tmpl.imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "Utilitatian Flat")!)
            tmpl.textProvider = CLKSimpleTextProvider(text: NSLocalizedString("Guess The Number", comment: ""), shortText:  NSLocalizedString("Guess", comment: ""))
            handler(tmpl)
            
        case .utilitarianLarge:
            let tmpl = CLKComplicationTemplateUtilitarianLargeFlat()
            tmpl.imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "Utilitatian Flat")!)
            tmpl.textProvider = CLKSimpleTextProvider(text: NSLocalizedString("Guess The Number", comment: ""), shortText:  NSLocalizedString("Guess", comment: ""))
            handler(tmpl)
            
        default:
            handler(nil)
        }
}
}
