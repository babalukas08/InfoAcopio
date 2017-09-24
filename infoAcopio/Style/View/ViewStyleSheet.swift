//
//  ViewStyleSheet.swift
//  LinioUI
//
//  Created by Danilo Souza on 24/05/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit

public enum ViewStyleSheet: String {
    case roundGrayBorder = "roundGrayBorder"
    case circularGrayBorder = "circularGrayBorder"
    case circularWhiteBorderThick = "circularWhiteBorderThick"
    case roundCornerLightGray = "roundCornerLightGray"
    case roundPrimColor = "roundPrimColor"
    case roundBorderless = "roundBorderless"
    case roundBorderless20 = "roundBorderless20"
    case roundGreenBorder = "roundGreenBorder"
    case roundGrayBorderReviews = "roundGrayBorderReviews"
    case roundPurple400 = "roundPurple400"
    
    // Flash deals bar
    case flashDealsBarBackground = "flashDealsBarBackground"
    case flashDealsBarForeground = "flashDealsBarForeground"
    case flashDealsEndBarForeground = "flashDealsEndBarForeground"
    
    // Decorations
    case whiteView = "whiteView"
    case whiteViewRound = "whiteViewRound"
    case gray50View = "gray50View"
    case gray600View = "gray600View"
    case gray300View = "gray300View"
    case gray400View = "gray400View"
    case gray900View = "gray900View"
    case primAmberView = "primAmberView"
    case primGreenView = "primGreenView"
    case green700View = "green700View"
    case purple400View = "purple400View"
    case transparent = "transparent"
    case primOrange = "primOrange"
    case shadowCardView = "shadowCardView"
    
    // Headers
    case headerBackground = "headerBackground"
    
    // Buttons
    case buttonPrimaryActive = "buttonPrimaryActive"
    case buttonPrimaryFocus = "buttonPrimaryFocus"
    
    case buttonPrimaryOrange = "buttonPrimaryOrange"
    case buttonPrimaryOrangeFocus = "buttonPrimaryOrangeFocus"
    
    case buttonPrimaryBlue = "buttonPrimaryBlue"
    case buttonPrimaryBlueFocus = "buttonPrimaryBlueFocus"
    
    case buttonPrimaryDisabled = "buttonPrimaryDisabled"
    case buttonPrimaryDisabledFocus = "buttonPrimaryDisabledFocus"
    
    case buttonPrimaryWhite = "buttonPrimaryWhite"
    case buttonPrimaryWhiteFocus = "buttonPrimaryWhiteFocus"
    
    case buttonPrimaryWhiteOutline = "buttonPrimaryWhiteOutline"
    case buttonPrimaryWhiteOutlineFocus = "buttonPrimaryWhiteOutlineFocus"
    
    case buttonPrimaryGreen700 = "buttonPrimaryGreen700"
    case buttonPrimaryGreen700Focus = "buttonPrimaryGreen700Focus"
    
    case secondaryActive = "secondaryActive"
    case secondaryFocus = "secondaryFocus"
    
    case secondaryPink = "secondaryPink"
    case secondaryPinkFocus = "secondaryPinkFocus"
    
    case secondaryDisabled = "secondaryDisabled"
    case secondaryDisabledFocus = "secondaryDisabledFocus"
    
    case secondaryWhite = "secondaryWhite"
    case secondaryWhiteFocus = "secondaryWhiteFocus"
    case secondaryWhiteUnselected = "secondaryWhiteUnselected"
    case secondaryAmberButton = "secondaryAmberButton"
    case secondaryWhiteFilter = "secondaryWhiteFilter"
    case secondaryWhiteFilterSelected = "secondaryWhiteFilterSelected"
    case primaryWhiteFilterSelected = "primaryWhiteFilterSelected"
    
    // Other buttons
    case searchOrangeBackground = "searchOrangeBackground"
    case overlayWhiteButton = "overlayWhiteButton"
    case ratingButton = "ratingButton"
    case ratingButtonLight = "ratingButtonLight"
    case roundPurple = "roundPurple"
    case returnButtonStyle = "returnButtonStyle"
    case returnButtonStyleOpacity = "returnButtonStyleOpacity"
    
    // Forms
    case roundWhiteFormContainer = "roundWhiteFormContainer"
    
    
    public func getStyle() -> ViewStyle {
        switch self {
        case .roundGrayBorder:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.white.asColor()
            viewStyle.borderColor = ColorPallete.gray300.asColor()
            viewStyle.borderWidth = 1
            viewStyle.cornerRadius = 6
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .circularGrayBorder:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.white.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.borderColor = ColorPallete.gray300.asColor()
            viewStyle.borderWidth = 1
            return viewStyle
            
        case .circularWhiteBorderThick:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.white.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.borderColor = ColorPallete.white.asColor()
            viewStyle.borderWidth = 5
            return viewStyle
            
        case .roundCornerLightGray:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray50.asColor()
            viewStyle.cornerRadius = 6
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .roundPrimColor:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.primOrange.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            return viewStyle
            
        case .roundPurple:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.purple400.asColor()
            viewStyle.borderColor = ColorPallete.white.asColor()
            viewStyle.borderWidth = 1
            viewStyle.width = 24
            viewStyle.height = 24
            viewStyle.shape = ViewStyle.ViewShape.round
            return viewStyle
        
        case .returnButtonStyle:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.white.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        case .returnButtonStyleOpacity:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray400.asColor()
            viewStyle.borderColor = ColorPallete.white.asColor()
            viewStyle.borderWidth = 1
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        case .roundBorderless:
            var viewStyle = ViewStyle()
            viewStyle.cornerRadius = 6
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .roundBorderless20:
            var viewStyle = ViewStyle()
            viewStyle.cornerRadius = 12
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .flashDealsBarBackground:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray300.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            return viewStyle
            
        case .flashDealsBarForeground:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.primBlue.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            return viewStyle
            
        case .flashDealsEndBarForeground:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.red.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            return viewStyle
            
        case .whiteView:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.white.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .whiteViewRound:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.white.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            viewStyle.cornerRadius = 6
            return viewStyle
            
        case .gray50View:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray50.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .gray600View:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray600.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .gray300View:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray300.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
        
        case .gray400View:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray400.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .gray900View:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray900.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .primAmberView:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.primAmber.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .primGreenView:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.primGreen.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .primOrange:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.primOrange.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .shadowCardView:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.white.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            viewStyle.cornerRadius = 6
            viewStyle.shadow = true
            
            return viewStyle
            
        case .green700View:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.green700.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .purple400View:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.purple400.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .headerBackground:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray50.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            return viewStyle
            
        case .roundGreenBorder:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.primGreen.asColor()
            viewStyle.cornerRadius = 6
            return viewStyle
            
        case .roundGrayBorderReviews:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray300.asColor()
            viewStyle.cornerRadius = 6
            return viewStyle
            
        case .roundPurple400:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.purple400.asColor()
            viewStyle.cornerRadius = 6
            return viewStyle
            
        case .transparent:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = UIColor.clear
            return viewStyle
            
        case .buttonPrimaryActive:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.primGreen.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .buttonPrimaryFocus:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.green700.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .buttonPrimaryOrange:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.primOrange.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .buttonPrimaryOrangeFocus:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.orange400.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .buttonPrimaryBlue:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.blue700.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .buttonPrimaryBlueFocus:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.blue900.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .buttonPrimaryDisabled:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray400.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .buttonPrimaryDisabledFocus:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray600.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .buttonPrimaryWhite:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.white.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .buttonPrimaryWhiteFocus:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.white.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .buttonPrimaryWhiteOutline:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = UIColor.clear
            viewStyle.borderColor = ColorPallete.white.asColor()
            viewStyle.borderWidth = 1
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .secondaryAmberButton:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = UIColor.clear
            viewStyle.borderColor = ColorPallete.amber700.asColor()
            viewStyle.borderWidth = 1
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        case .secondaryWhiteFilter:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = UIColor.clear
            viewStyle.borderColor = ColorPallete.white.asColor()
            viewStyle.borderWidth = 2
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        case .secondaryWhiteFilterSelected:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = UIColor.white
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        case .primaryWhiteFilterSelected:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = UIColor.white
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .buttonPrimaryWhiteOutlineFocus:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray400.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
        
        case .buttonPrimaryGreen700:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.green700.asColor()
            viewStyle.borderColor = UIColor.clear
            viewStyle.borderWidth = 0
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .buttonPrimaryGreen700Focus:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.green900.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnPrimary.rawValue
            return viewStyle
            
        case .secondaryActive:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.primGreen.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        case .secondaryFocus:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.green700.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        case .secondaryPink:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.primPink.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        case .secondaryPinkFocus:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.pink700.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        case .secondaryDisabled:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray400.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        case .secondaryDisabledFocus:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.gray600.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        case .secondaryWhite:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.white.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        case .secondaryWhiteFocus:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.white.asColor()
            viewStyle.shape = ViewStyle.ViewShape.round
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        case .secondaryWhiteUnselected:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = UIColor.clear
            viewStyle.shape = ViewStyle.ViewShape.round
            //viewStyle.borderColor = ColorPallete.white.asColor()
            //viewStyle.borderWidth = 1
            viewStyle.height = SizesPallete.ButtonSize.btnSecondary.rawValue
            return viewStyle
            
        // Other buttons
        case .searchOrangeBackground:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = UIColor.clear
            viewStyle.shape = ViewStyle.ViewShape.rect
            viewStyle.borderColor = UIColor.clear
            viewStyle.borderWidth = 0
            viewStyle.cornerRadius = 0
            return viewStyle
            
        case .roundWhiteFormContainer:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.white.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            viewStyle.cornerRadius = 6
            return viewStyle
            
        case .overlayWhiteButton:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = UIColor.clear
            viewStyle.shape = ViewStyle.ViewShape.rect
            viewStyle.height = SizesPallete.ButtonSize.searchButton.rawValue
            viewStyle.width = 30
            return viewStyle
            
        case .ratingButton:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.green700.asColor()
            viewStyle.shape = ViewStyle.ViewShape.rect
            viewStyle.cornerRadius = 6
            return viewStyle
            
        case .ratingButtonLight:
            var viewStyle = ViewStyle()
            viewStyle.backgroundColor = ColorPallete.white.asColor()
            viewStyle.borderColor = ColorPallete.green700.asColor()
            viewStyle.borderWidth = 1
            viewStyle.shape = ViewStyle.ViewShape.rect
            viewStyle.cornerRadius = 6
            return viewStyle
            
        }
    }
}
