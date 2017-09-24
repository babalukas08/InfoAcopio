//
//  FloatLabelStyleSheet.swift
//  LinioUIKit
//
//  Created by Danilo Souza on 06/09/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import Foundation
import UIKit

public enum FloatLabelStyleSheet: String {
    
    case white
    case grey
    
    public func getStyle() -> FloatLabelStyle {
        switch self {
        case .white:
            var floatLabelStyle = FloatLabelStyle()
            floatLabelStyle.floatTextStyle = TypographyStyle.txtCardButtonWhiteUnderline.getStyle()
            floatLabelStyle.textStyle = TypographyStyle.textBaseNegative.getStyle()
            floatLabelStyle.placeHolderStyle = TypographyStyle.textBaseNegative.getStyle()
            
            floatLabelStyle.clearFieldImage = UIImage(named: "ndIc24White")
            
            floatLabelStyle.badFieldImage = UIImage(named: "")
            
            floatLabelStyle.goodFieldImage = UIImage(named: "ndIc32OkGreen")
            
            floatLabelStyle.bottomLineColor = ColorPallete.white.asColor(withAlpha: 0.75)
            floatLabelStyle.bottomLineHeight = 1
            
            return floatLabelStyle
            
        case .grey:
            var floatLabelStyle = FloatLabelStyle()
            floatLabelStyle.floatTextStyle = TypographyStyle.textBaseMediumS.getStyle()
            floatLabelStyle.textStyle = TypographyStyle.textBase.getStyle()
            floatLabelStyle.placeHolderStyle = TypographyStyle.textBase.getStyle()
            
            floatLabelStyle.clearFieldImage = UIImage(named: "ndIc24Clear600")
            
            floatLabelStyle.badFieldImage = UIImage(named: "")
            
            floatLabelStyle.goodFieldImage = UIImage(named: "ndIc32OkGreen")
            
            floatLabelStyle.bottomLineColor = ColorPallete.gray400.asColor()
            floatLabelStyle.bottomLineHeight = 1
            
            return floatLabelStyle
        }
    }
    
}
