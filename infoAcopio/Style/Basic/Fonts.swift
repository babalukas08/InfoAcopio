//
//  Fonts.swift
//  TestStyling
//
//  Created by Danilo Souza on 10/05/17.
//  Copyright © 2017 Danilo Souza. All rights reserved.
//

import Foundation
import UIKit


public enum FontWeight {
    case base
    case bold
    case semibold
    case medium
}

public enum FontPallete {
    
    case sanFrancisco
    
    public func asFont(ofSize: CGFloat) -> UIFont {
        let font = UIFont.systemFont(ofSize: CGFloat(ofSize))
        return font
    }
    
    public func asFont(ofSize: CGFloat, withWeight weight: FontWeight) -> UIFont {
        switch weight {
        case .base:
            return UIFont.systemFont(ofSize: CGFloat(ofSize), weight: UIFontWeightRegular)
        case .medium:
            return UIFont.systemFont(ofSize: CGFloat(ofSize), weight: UIFontWeightMedium)
        case .bold:
            return UIFont.systemFont(ofSize: CGFloat(ofSize), weight: UIFontWeightBold)
        case .semibold:
            return UIFont.systemFont(ofSize: CGFloat(ofSize), weight: UIFontWeightSemibold)
        }
    }
    
}
