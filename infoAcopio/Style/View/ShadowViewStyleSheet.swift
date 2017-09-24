//
//  ShadowViewStyleSheet.swift
//  LinioUIKit
//
//  Created by Danilo Souza on 14/08/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit

public enum ShadowViewStyleSheet: String {
    
    case cardRect
    case cardRound
    
    public func getStyle() -> ShadowStyle {
        switch self {
        case .cardRect:
            var shadowStyle = ShadowStyle()
            shadowStyle.borderRadius = 0
            shadowStyle.shadowOffset = CGSize(width: 0, height: 2)
            shadowStyle.shadowOpacity = 0.2
            shadowStyle.shadowRadius = 5
            return shadowStyle
            
        case .cardRound:
            var shadowStyle = ShadowStyle()
            shadowStyle.borderRadius = 6
            shadowStyle.shadowOffset = CGSize(width: 0, height: 3)
            shadowStyle.shadowOpacity = 0.2
            shadowStyle.shadowRadius = 5
            return shadowStyle
        }
    }
    
}
