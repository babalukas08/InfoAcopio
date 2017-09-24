//
//  Typography.swift
//  TestStyling
//
//  Created by Danilo Souza on 10/05/17.
//  Copyright © 2017 Danilo Souza. All rights reserved.
//

import UIKit

public enum TypographyStyle: String {
    
    case generalH1 = "generalH1"
    case generalH2 = "generalH2"
    case generalH3 = "generalH3"
    case generalH4 = "generalH4"
    
    case highlightH1 = "highlightH1"
    case highlightH2 = "highlightH2"
    case highlightH3 = "highlightH3"
    case highlightH4 = "highlightH4"
    
    case grayH1 = "grayH1"
    case grayH2 = "grayH2"
    case grayH3 = "grayH3"
    case grayH4 = "grayH4"
    case grayH5 = "grayH5"
    
    case textBaseAccentBold = "textBaseAccentBold"
    case textBaseAccentBoldI = "textBaseAccentBoldI"
    case textBaseXs = "textBaseXs"
    case textBaseMedium = "textBaseMedium"
    case textBaseMediumCross = "textBaseMediumCross"
    case textBaseMediumCrossNormal = "textBaseMediumCrossNormal"
    case textBaseAccentS = "textBaseAccentS"
    case textBaseAccent = "textBaseAccent"
    case textBaseAccentCentered = "textBaseAccentCentered"
    case textBaseLight = "textBaseLight"
    case textBase = "textBase"
    case textBaseS = "textBaseS"
    case textBaseL = "textBaseL"
    case textBaseAccentXl = "textBaseAccentXl"
    case textBaseMediumBoldS = "textBaseMediumBoldS"
    case textBaseMediumXs = "textBaseMediumXs"
    case textBaseLightXs = "textBaseLightXs"
    case textBaseLightS = "textBaseLightS"
    case textBaseMediumS = "textBaseMediumS"
    case textBaseHighlightL = "textBaseHighlightL"
    case textBaseHighlightFocusedL = "textBaseHighlightFocusedL"
    case textBaseHightlight = "textBaseHightlight"
    case textBaseNegativeBoldS = "textBaseNegativeBoldS"
    case textBaseNegativeBoldXs = "textBaseNegativeBoldXs"
    case textBaseNegativeBoldXsOpacity = "textBaseNegativeBoldXsOpacity"
    case textBaseNegativeBold = "textBaseNegativeBold"
    case textBaseNegative = "textBaseNegative"
    case textBaseNegativeTight = "textBaseNegativeTight"
    case textBaseNegativeXs = "textBaseNegativeXs"
    case textBaseNegativeS = "textBaseNegativeS"
    case textBaseNegativeXL = "textBaseNegativeXL"
    case textBaseLightBold = "textBaseLightBold"
    case textBaseNegativeLBold = "textBaseNegativeLBold"
    case textBaseNegativel = "textBaseNegativel"
    case textBaseNegativelOpacity = "textBaseNegativelOpacity"
    case textBaseXl = "textBaseXl"
    case txtCardButtonWhiteUnderline = "txtCardButtonWhiteUnderline"
    case textNumberItemsFilters = "textNumberItemsFilters"
    case textTabBar = "textTabBar"
    case textTabBarHighlight = "textTabBarHighlight"
    case sFNSText = "sFNSText"
    case textBaseBoldL = "textBaseBoldL"
    case textBaseBoldM = "textBaseBoldM"
    case textBaseMediumBold = "textBaseMediumBold"
    
    case headingGray3 = "headingGray3"
    case headingNegative1 = "headingNegative1"
    case headingNegative2 = "headingNegative2"
    case headingNegative3 = "headingNegative3"
    case ratingBig = "ratingBig"
    
    //Prices Style
    case priceBig = "priceBig"
    case priceMedium = "priceMedium"
    case priceMediumRed = "priceMediumRed"
    
    // Card Tracking
    case txtCardStatusGreen = "txtCardStatusGreen"
    case txtCardStatusOrange = "txtCardStatusOrange"
    case txtCardStatusRed = "txtCardStatusRed"
    
    case txtCardStatusOrderListGreen = "txtCardStatusOrderListGreen"
    case txtCardStatusOrderListOrange = "txtCardStatusOrderListOrange"
    case txtCardStatusOrderListRed = "txtCardStatusOrderListRed"
    
    
    // Flash Deals Style
    case textHotDealsTimer = "textHotDealsTimer"
    
    // Forms Style
    case inputAlert = "inputAlert"
    
    // Link
    case basicLink = "basicLink"
    
    // Button
    case textBtnPrimaryWhite = "textBtnPrimaryWhite"
    case textBtnPrimaryGreen = "textBtnPrimaryGreen"
    case textBtnPrimaryGreenFocus = "textBtnPrimaryGreenFocus"
    case textBtnSecondaryWhite = "textBtnSecondaryWhite"
    case textBtnSecondaryPurple = "textBtnSecondaryPurple"
    case textBtnSecondaryWhiteFocus = "textBtnSecondaryWhiteFocus"
    case textBtnSecondarySnackOrange = "textBtnSecondarySnackOrange"
    case textBtnSecondarySnackOrangeFocus = "textBtnSecondarySnackOrangeFocus"
    case textRatingSellerGreen = "textRatingSellerGreen"
    case txtButtonSecondaryPrimeOrange = "txtButtonSecondaryPrimeOrange"
    case textBtnPrimaryPurple = "textBtnPrimaryPurple"
    case txtCardButtonWhiteUnderlineNoOpacity = "txtCardButtonWhiteUnderlineNoOpacity"
    case txtCardButtonWhite = "txtCardButtonWhite"
    case txtCardButtonOrangeUnderline = "txtCardButtonOrangeUnderline"
    case txtCardButtonOrange = "txtCardButtonOrange"
    case txtRetunrCancelButton = "txtRetunrCancelButton"
    case txtRetunrCancelButtonDisabled = "txtRetunrCancelButtonDisabled"
    
    // Coupon
    case textCoupon = "textCoupon"
    case textEmptyCoupon = "textEmptyCoupon"
    
    // Search
    case textBaseOrangeS = "textBaseOrangeS"
    
    
    
    public func getStyle() -> TextStyle {
        switch self {
        // General
        case .generalH1:
            let color = ColorPallete.gray900.asColor()
            let size = SizesPallete.TextSize.textXXL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .generalH2:
            let color = ColorPallete.gray900.asColor()
            let size = SizesPallete.TextSize.textXL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .generalH3:
            let color = ColorPallete.gray900.asColor()
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .generalH4:
            let color = ColorPallete.gray900.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        // Highlight
        case .highlightH1:
            let color = ColorPallete.primOrange.asColor()
            let size = SizesPallete.TextSize.textXXL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .highlightH2:
            let color = ColorPallete.primOrange.asColor()
            let size = SizesPallete.TextSize.textXL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .highlightH3:
            let color = ColorPallete.primOrange.asColor()
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .highlightH4:
            let color = ColorPallete.primOrange.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        // Gray
        case .grayH1:
            let color = ColorPallete.gray.asColor()
            let size = SizesPallete.TextSize.textXXL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .grayH2:
            let color = ColorPallete.gray.asColor()
            let size = SizesPallete.TextSize.textXL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .grayH3:
            let color = ColorPallete.gray.asColor()
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .grayH4:
            let color = ColorPallete.gray.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .grayH5:
            let color = ColorPallete.gray.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        // Text Styles
        case .textBase:
            let color = ColorPallete.gray600.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 4
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseS:
            let color = ColorPallete.gray600.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 4
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseL:
            let color = ColorPallete.gray600.asColor()
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 4
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseAccentXl:
            let color = ColorPallete.gray900.asColor()
            let size = SizesPallete.TextSize.textXL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = 0
            return textStyle
            
        case .textBaseMedium:
            let color = ColorPallete.gray600.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .textBaseXl:
            let color = ColorPallete.gray600.asColor()
            let size = SizesPallete.TextSize.textXL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .textBaseAccentBold:
            let color = ColorPallete.gray900.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            let lineHeight : CGFloat = 1
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseAccentBoldI:
            let color = ColorPallete.gray900.asColor()
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            let lineHeight : CGFloat = 3
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseXs:
            let color = ColorPallete.gray600.asColor()
            let size = SizesPallete.TextSize.textXS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 2
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseMediumCross:
            let color = ColorPallete.gray.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 5
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.strikeThrough = true
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseMediumCrossNormal:
            let color = ColorPallete.gray.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 5
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseAccentS:
            let color = ColorPallete.gray900.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 4
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseAccent:
            let color = ColorPallete.gray900.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 1
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseAccentCentered:
            let color = ColorPallete.gray900.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 2
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            textStyle.alignment = .center
            return textStyle
            
        case .textBaseLight:
            let color = ColorPallete.gray400.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 5
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .priceBig:
            let color = ColorPallete.gray900.asColor()
            let size = SizesPallete.TextSize.textXL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .priceMedium:
            let color = ColorPallete.gray900.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .priceMediumRed:
            let color = ColorPallete.red.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .txtCardStatusGreen:
            let color = ColorPallete.green700.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .left
            return textStyle
            
        case .txtCardStatusOrderListGreen:
            let color = ColorPallete.green700.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .center
            return textStyle
            
        case .txtCardStatusOrderListOrange:
            let color = ColorPallete.amber700.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .center
            return textStyle
            
        case .txtCardStatusOrderListRed:
            let color = ColorPallete.scarlet.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .center
            return textStyle
            
        case .txtCardStatusOrange:
            let color = ColorPallete.amber700.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .left
            return textStyle
            
        case .txtCardStatusRed:
            let color = ColorPallete.scarlet.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .left
            return textStyle
            
        case.headingGray3:
            let color = ColorPallete.gray.asColor()
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .ratingBig:
            let color = ColorPallete.gray900.asColor()
            let size = SizesPallete.TextSize.textXXXL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .textBaseLightS:
            let color = ColorPallete.gray400.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 2
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseLightXs:
            let color = ColorPallete.gray400.asColor()
            let size = SizesPallete.TextSize.textXS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 2
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseHighlightL:
            let color = ColorPallete.primOrange.asColor()
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 2
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseHighlightFocusedL:
            let color = ColorPallete.orange400.asColor()
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 2
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseHightlight:
            let color = ColorPallete.primOrange.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 5
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseNegativeBoldS:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            let lineHeight : CGFloat = 0
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
        
        case .textBaseNegativeBoldXs:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textXS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            let lineHeight : CGFloat = 0
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseNegativeBoldXsOpacity:
            let color = ColorPallete.white.asColor().withAlphaComponent(0.8)
            let size = SizesPallete.TextSize.textXS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 2
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
        
        case .textBaseNegative:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 5
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseNegativeTight:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 0
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseNegativeXs:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textXS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 2
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            //textStyle.alignment = .left
            return textStyle
            
        case .textBaseNegativeS:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 0
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            textStyle.alignment = .center
            return textStyle
            
        case .textBaseNegativeXL:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textXL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 0
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            textStyle.alignment = .center
            return textStyle
            
        case .headingNegative1:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textXXL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .headingNegative2:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textXL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .headingNegative3:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .textHotDealsTimer:
            let color = ColorPallete.blueFlashDeals.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 4
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseMediumBoldS:
            let color = ColorPallete.gray.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            let lineHeight : CGFloat = 4
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseMediumXs:
            let color = ColorPallete.gray.asColor()
            let size = SizesPallete.TextSize.textXS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 2
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseMediumS:
            let color = ColorPallete.gray.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 7
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .inputAlert:
            let color = ColorPallete.gray600.asColor()
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .basicLink:
            let color = ColorPallete.blueFlashDeals.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .medium)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.underlined = true
            return textStyle
            
        case .textBaseLightBold:
            let color = ColorPallete.gray400.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            let lineHeight : CGFloat = 0
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseNegativeLBold:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            let lineHeight : CGFloat = 3
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseNegativel:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 4
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBaseNegativelOpacity:
            let color = ColorPallete.white.asColor().withAlphaComponent(0.80)
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 4
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .txtCardButtonWhiteUnderline:
            let color = ColorPallete.white.asColor().withAlphaComponent(0.80)
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 4
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
        
        case .textNumberItemsFilters:
            let color = ColorPallete.white.asColor().withAlphaComponent(0.8)
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 4
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textTabBar:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textxxs.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .medium)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .center
            return textStyle
            
        case .textTabBarHighlight:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textxxs.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .center
            return textStyle
            
        case .sFNSText:
            let color = ColorPallete.gray.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .left
            return textStyle
            
        case .textBaseBoldL:
            let color = ColorPallete.gray600.asColor()
            let size = SizesPallete.TextSize.textL.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = 0
            textStyle.alignment = .left
            return textStyle
            
        case .textBaseBoldM:
            let color = ColorPallete.gray600.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = 0
            textStyle.alignment = .left
            return textStyle
            
        case .textBaseMediumBold:
            let color = ColorPallete.gray.asColor()
            let size = SizesPallete.TextSize.textSS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = 0
            textStyle.alignment = .center
            return textStyle
            
        case .textBaseNegativeBold:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            let lineHeight : CGFloat = 4
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        // Buttons
        case .textBtnPrimaryWhite:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .textBtnPrimaryGreen:
            let color = ColorPallete.primGreen.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .medium)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .textBtnPrimaryGreenFocus:
            let color = ColorPallete.green700.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .medium)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .textBtnSecondaryWhite:
            let color = ColorPallete.gray600.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            let lineHeight : CGFloat = 4
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        case .textBtnSecondaryWhiteFocus:
            let color = ColorPallete.blue700.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .textBtnSecondaryPurple:
            let color = ColorPallete.purple400.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
        
        case .textBtnSecondarySnackOrange:
            let color = ColorPallete.orange400.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .medium)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .textBtnSecondarySnackOrangeFocus:
            let color = ColorPallete.primOrange.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .medium)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .textRatingSellerGreen:
            let color = ColorPallete.green700.asColor()
            let size = SizesPallete.TextSize.textXS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
            
        case .textCoupon:
            let color = ColorPallete.purple400.asColor()
            let size = SizesPallete.TextSize.textXS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            return textStyle
        
        case .textEmptyCoupon:
            let color = ColorPallete.gray400.asColor()
            let size = SizesPallete.TextSize.textEmptyCopupon.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .center
            return textStyle
            
        case .txtButtonSecondaryPrimeOrange:
            let color = ColorPallete.orange400.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            let lineHeight : CGFloat = 4
            let aligment: NSTextAlignment = .center
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            textStyle.alignment = aligment
            return textStyle
            
        case .textBtnPrimaryPurple:
            let color = ColorPallete.purple400.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            let aligment: NSTextAlignment = .center
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = aligment
            return textStyle
            
        case .txtCardButtonWhiteUnderlineNoOpacity:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .left
            textStyle.underlined = true
            return textStyle
            
        case .txtCardButtonWhite:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .left
            return textStyle
            
        case .txtCardButtonOrangeUnderline:
            let color = ColorPallete.primOrange.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .left
            textStyle.underlined = true
            return textStyle
            
        case .txtCardButtonOrange:
            let color = ColorPallete.primOrange.asColor()
            let size = SizesPallete.TextSize.textM.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .center
            return textStyle
            
        case .txtRetunrCancelButton:
            let color = ColorPallete.scarlet.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .center
            return textStyle
            
        case .txtRetunrCancelButtonDisabled:
            let color = ColorPallete.white.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .bold)
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.alignment = .center
            return textStyle
            
        case .textBaseOrangeS:
            let color = ColorPallete.primOrange.asColor()
            let size = SizesPallete.TextSize.textS.rawValue
            let font = FontPallete.sanFrancisco.asFont(ofSize: CGFloat(size), withWeight: .base)
            let lineHeight : CGFloat = 4
            
            var textStyle = TextStyle()
            textStyle.color = color
            textStyle.size = size
            textStyle.font = font
            textStyle.lineHeight = lineHeight
            return textStyle
            
        }
    }
}
