//
//  ButtonStyleSheet.swift
//  LinioUI
//
//  Created by Danilo Souza on 22/05/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit

public enum ButtonStyleSheet: String {
    case primaryActive = "primaryActive"
    case primaryOrange = "primaryOrange"
    case primaryBlue = "primaryBlue"
    case primaryDisabled = "primaryDisabled"
    case primaryWhite = "primaryWhite"
    case primaryWhiteOutline = "primaryWhiteOutline"
    case primaryGreen700 = "primaryGreen700"
    case primaryWhiteOutlinePurchaseButton = "primaryWhiteOutlinePurchaseButton"
    case primaryWhiteFilterSelected = "primaryWhiteFilterSelected"
    
    // Secondary Styles
    case secondaryActive = "secondaryActive"
    case secondaryPink = "secondaryPink"
    case secondaryPurple = "secondaryPurple"
    case secondaryDisabledSm = "secondaryDisabledSm"
    case secondaryWhite = "secondaryWhite"
    case secondaryWhiteUnselected = "secondaryWhiteUnselected"
    case secondaryWhiteText = "secondaryWhiteText"
    case secondaryPageContent = "secondaryPageContent"
    case secondaryWhiteFilterUnselected = "secondaryWhiteFilterUnselected"
    case secondaryWhiteFilterSelected = "secondaryWhiteFilterSelected"
    
    // Search Styles buttons
    case searchOrange = "searchOrange"
    case searchTabButton = "searchTabButton"
    case snackCta = "snackCta"
    case overlayButton = "overlayButton"
    case roundedFilterPriceButton = "roundedFilterPriceButton"
    case returnButton = "returnButton"
    case returnButtonOpacity = "returnButtonOpacity"
    
    // Coupons Styles buttons
    case cardButtonWhiteUnderline = "cardButtonWhiteUnderline"
    case cardButtonOrangeUnderline = "cardButtonOrangeUnderline"
    
    
    public func getStyle() -> ButtonStyle {
        var buttonStyle = ButtonStyle()
        buttonStyle.primaryTextStyle = TypographyStyle.textBtnPrimaryWhite.getStyle()
        buttonStyle.secondaryTextStyle = TypographyStyle.textBtnPrimaryWhite.getStyle()
        buttonStyle.leftInset = SizesPallete.ButtonSize.horizontaInset.rawValue
        buttonStyle.rightInset = SizesPallete.ButtonSize.horizontaInset.rawValue
        
        switch self {
        case .primaryActive:
            buttonStyle.primaryViewStyle = ViewStyleSheet.buttonPrimaryActive.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.buttonPrimaryFocus.getStyle()

        case .primaryOrange:
            buttonStyle.primaryViewStyle = ViewStyleSheet.buttonPrimaryOrange.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.buttonPrimaryOrangeFocus.getStyle()

        case .primaryBlue:
            buttonStyle.primaryViewStyle = ViewStyleSheet.buttonPrimaryBlue.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.buttonPrimaryBlueFocus.getStyle()

        case .primaryDisabled:
            buttonStyle.primaryViewStyle = ViewStyleSheet.buttonPrimaryDisabled.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.buttonPrimaryDisabledFocus.getStyle()

        case .primaryWhite:
            buttonStyle.primaryViewStyle = ViewStyleSheet.buttonPrimaryWhite.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.buttonPrimaryWhiteFocus.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.textBtnPrimaryGreen.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBtnPrimaryGreenFocus.getStyle()
            
        case .primaryWhiteOutline:
            buttonStyle.primaryViewStyle = ViewStyleSheet.buttonPrimaryWhiteOutline.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.buttonPrimaryWhiteOutlineFocus.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.textBaseNegativeBold.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBaseNegativeBold.getStyle()
            
        case .primaryWhiteOutlinePurchaseButton:
            buttonStyle.primaryViewStyle = ViewStyleSheet.buttonPrimaryWhiteOutline.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.buttonPrimaryGreen700.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.textBaseNegativeBold.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBaseNegativeBold.getStyle()
            
        case .primaryGreen700:
            buttonStyle.primaryViewStyle = ViewStyleSheet.buttonPrimaryGreen700.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.buttonPrimaryGreen700Focus.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.textBaseNegativeBold.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBaseNegativeBold.getStyle()

        case .secondaryActive:
            buttonStyle.primaryViewStyle = ViewStyleSheet.secondaryActive.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.secondaryFocus.getStyle()

        case .secondaryPink:
            buttonStyle.primaryViewStyle = ViewStyleSheet.secondaryPink.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.secondaryPinkFocus.getStyle()
            buttonStyle.leftInset = 14
            buttonStyle.rightInset = 14
            
        case .secondaryPurple:
            buttonStyle.primaryViewStyle = ViewStyleSheet.secondaryWhite.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.secondaryWhiteFocus.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.textBtnSecondaryPurple.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBtnSecondaryWhiteFocus.getStyle()
            buttonStyle.leftInset = 14
            buttonStyle.rightInset = 14

        case .secondaryDisabledSm:
            buttonStyle.primaryViewStyle = ViewStyleSheet.secondaryDisabled.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.secondaryDisabledFocus.getStyle()

        case .secondaryWhite:
            buttonStyle.primaryViewStyle = ViewStyleSheet.secondaryWhite.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.secondaryWhiteFocus.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.textBtnSecondaryWhite.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBtnSecondaryWhiteFocus.getStyle()

        case .secondaryWhiteUnselected:
            buttonStyle.primaryViewStyle = ViewStyleSheet.secondaryWhiteUnselected.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.secondaryWhiteUnselected.getStyle()

        case .secondaryWhiteText:
            buttonStyle.primaryViewStyle = ViewStyleSheet.secondaryWhiteUnselected.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.secondaryWhiteUnselected.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.textBaseNegativeBoldXsOpacity.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBaseNegativeBoldXsOpacity.getStyle()
        case .secondaryPageContent:
            buttonStyle.primaryViewStyle = ViewStyleSheet.secondaryAmberButton.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.secondaryAmberButton.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.txtButtonSecondaryPrimeOrange.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.txtButtonSecondaryPrimeOrange.getStyle()
            
        case .secondaryWhiteFilterUnselected:
            buttonStyle.primaryViewStyle = ViewStyleSheet.secondaryWhiteFilter.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.secondaryWhiteFilter.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.textBtnPrimaryWhite.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBtnPrimaryWhite.getStyle()
            buttonStyle.leftInset = 0
            buttonStyle.rightInset = 0
            
        case .secondaryWhiteFilterSelected:
            buttonStyle.primaryViewStyle = ViewStyleSheet.secondaryWhiteFilterSelected.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.secondaryWhiteFilterSelected.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.textBtnPrimaryPurple.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBtnPrimaryPurple.getStyle()
            buttonStyle.leftInset = 0
            buttonStyle.rightInset = 0
            
        case .primaryWhiteFilterSelected:
            buttonStyle.primaryViewStyle = ViewStyleSheet.primaryWhiteFilterSelected.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.primaryWhiteFilterSelected.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.textBtnPrimaryPurple.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBtnPrimaryPurple.getStyle()
            buttonStyle.leftInset = 0
            buttonStyle.rightInset = 0
            
        case .searchOrange:
            buttonStyle.primaryViewStyle = ViewStyleSheet.searchOrangeBackground.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.searchOrangeBackground.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.textBaseHighlightL.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBaseHighlightFocusedL.getStyle()
            buttonStyle.leftInset = 0
            buttonStyle.rightInset = 0
            
        case .searchTabButton:
            buttonStyle.primaryViewStyle = nil
            buttonStyle.secondaryViewStyle = nil
            buttonStyle.primaryTextStyle = TypographyStyle.textBaseS.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBaseOrangeS.getStyle()
            buttonStyle.leftInset = 0
            buttonStyle.rightInset = 0
            
        case .snackCta:
            buttonStyle.primaryViewStyle = ViewStyleSheet.secondaryWhite.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.secondaryWhiteFocus.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.textBtnSecondarySnackOrange.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBtnSecondarySnackOrangeFocus.getStyle()
            
        case .overlayButton:
            //overlayWhiteButton
            buttonStyle.primaryViewStyle = ViewStyleSheet.overlayWhiteButton.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.overlayWhiteButton.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.textBaseNegative.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.textBaseNegative.getStyle()
            buttonStyle.leftInset = 0
            buttonStyle.rightInset = 0
            
        case .roundedFilterPriceButton:
            buttonStyle.primaryViewStyle = ViewStyleSheet.roundPurple.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.roundPurple.getStyle()
            buttonStyle.leftInset = 0
            buttonStyle.rightInset = 0
            
        case .returnButton:
            buttonStyle.primaryViewStyle = ViewStyleSheet.returnButtonStyle.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.returnButtonStyle.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.txtRetunrCancelButton.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.txtRetunrCancelButton.getStyle()
            buttonStyle.leftInset = 0
            buttonStyle.rightInset = 0
            
        case .returnButtonOpacity:
            buttonStyle.primaryViewStyle = ViewStyleSheet.returnButtonStyleOpacity.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.returnButtonStyleOpacity.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.txtRetunrCancelButtonDisabled.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.txtRetunrCancelButtonDisabled.getStyle()
            buttonStyle.leftInset = 0
            buttonStyle.rightInset = 0
            
        case .cardButtonWhiteUnderline:
            buttonStyle.primaryViewStyle = ViewStyleSheet.overlayWhiteButton.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.overlayWhiteButton.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.txtCardButtonWhiteUnderlineNoOpacity.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.txtCardButtonWhiteUnderlineNoOpacity.getStyle()
            buttonStyle.leftInset = 0
            buttonStyle.rightInset = 0
            
        case .cardButtonOrangeUnderline:
            buttonStyle.primaryViewStyle = ViewStyleSheet.searchOrangeBackground.getStyle()
            buttonStyle.secondaryViewStyle = ViewStyleSheet.searchOrangeBackground.getStyle()
            buttonStyle.primaryTextStyle = TypographyStyle.txtCardButtonOrangeUnderline.getStyle()
            buttonStyle.secondaryTextStyle = TypographyStyle.txtCardButtonOrangeUnderline.getStyle()
            buttonStyle.leftInset = 0
            buttonStyle.rightInset = 0
        }

        return buttonStyle
    }
}
