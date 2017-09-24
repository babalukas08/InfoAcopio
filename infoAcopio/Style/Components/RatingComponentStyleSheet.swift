//
//  RatingComponentStyleSheet.swift
//  LinioUI
//
//  Created by Danilo Souza on 05/06/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit

public enum RatingComponentStyleSheet: String {
    
    case yellow
    case yellowBig
    case green
    case greenBig
    
    public func getStyle() -> RatingComponentStyle {
        let bundle = Bundle(for: RatingComponent.self)

        switch self {
        case .yellow:
            var style = RatingComponentStyle()
            style.offImage = UIImage(named: "ndIcStarGray12", in: bundle, compatibleWith: nil)
            style.onImage =  UIImage(named: "ndIcStarYellow12", in: bundle, compatibleWith: nil)
            style.margin = 0
            style.starSize = 12
            style.primaryColor = ColorPallete.primAmber.asColor()
            return style
            
        case .yellowBig:
            var style = RatingComponentStyle()
            style.offImage = UIImage(named: "ndIcStarGrey16", in: bundle, compatibleWith: nil)
            style.onImage =  UIImage(named: "ndIcStarYellow16", in: bundle, compatibleWith: nil)
            style.margin = 0
            style.starSize = 20
            style.primaryColor = ColorPallete.primAmber.asColor()
            return style
            
        case .green:
            var style = RatingComponentStyle()
            style.offImage = UIImage(named: "ndIcStarGray12", in: bundle, compatibleWith: nil)
            style.onImage =  UIImage(named: "ndIcStarGreen12", in: bundle, compatibleWith: nil)
            style.margin = 0
            style.starSize = 12
            style.primaryColor = ColorPallete.primGreen.asColor()
            return style
            
        case .greenBig:
            var style = RatingComponentStyle()
            style.offImage = UIImage(named: "ndIcStarGrey16", in: bundle, compatibleWith: nil)
            style.onImage =  UIImage(named: "ndIcStarGreen16", in: bundle, compatibleWith: nil)
            style.margin = 0
            style.starSize = 20
            style.primaryColor = ColorPallete.primGreen.asColor()
            return style
        }
        
        
    }
    
}
