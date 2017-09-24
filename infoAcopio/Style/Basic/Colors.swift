//
//  Colors.swift
//  TestStyling
//
//  Created by Danilo Souza on 10/05/17.
//  Copyright © 2017 Danilo Souza. All rights reserved.
//

import Foundation
import UIKit

public enum ColorPallete: String {
    // Primary
    case primOrange = "#FF6D00"
    case primGreen = "#49C18D"
    case primPink = "#F06292"
    case primPurple = "#7E57C2"
    case primBlue = "#29B6F6"
    case primAmber = "#FFCA28"
    
    // Gray
    case gray900 = "#212121"
    case gray600 = "#757575"
    case gray = "#8F8F8F"
    case gray400 = "#BDBDBD"
    case gray300 = "#E0E0E0"
    case gray50 = "#f8f5f5"
    case grayD8 = "D8D8D8"
    case white = "#FFFFFF"
    
    // Secondary
    case orange400 = "#FF9100"
    case blue700 = "#3D11B8"
    case blue900 = "#1F0076"
    case purple400 = "#651FFF"
    case green700 = "#3A9A70"
    case green900 = "#226346"
    case red = "#D0021B"
    case pink700 = "#ec407a"
    case yellow = "FFAB00"
    case amber700 = "ffab00"
    case purpleGradient = "340e9e"
    case orangeGradient2 = "dc7500"
    case bgSuperView = "f8f5f5"
    case scarlet = "d0011b"
    
    // Other
    case blueFlashDeals = "#4A90E2"
    // Gradients
    case black = "#000000"
    case accountBlueStart = "#1d7dcc"
    case accountBlueEnd = "#155b94"
    
    public  func asColor() -> UIColor {
        return hexStringToUIColor(hex: self.rawValue)
    }
    
    public func asColor(withAlpha: CGFloat) -> UIColor {
        let color = self.asColor()
        return color.withAlphaComponent(withAlpha)
    }
    
    private func hexStringToUIColor (hex: String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

// MARK: Gradient Colors
public extension UIColor {
    convenience public  init(_ hex: UInt) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

public  typealias GradientType = (x: CGPoint, y: CGPoint)

public enum GradientPoint {
    case leftRight
    case rightLeft
    case topBottom
    case bottomTop
    case topLeftBottomRight
    case bottomRightTopLeft
    case topRightBottomLeft
    case bottomLeftTopRight
    
    public func draw() -> GradientType {
        switch self {
        case .leftRight:
            return (x: CGPoint(x: 0, y: 0.5), y: CGPoint(x: 1, y: 0.5))
        case .rightLeft:
            return (x: CGPoint(x: 1, y: 0.5), y: CGPoint(x: 0, y: 0.5))
        case .topBottom:
            return (x: CGPoint(x: 0.5, y: 0), y: CGPoint(x: 0.5, y: 1))
        case .bottomTop:
            return (x: CGPoint(x: 0.5, y: 1), y: CGPoint(x: 0.5, y: 0))
        case .topLeftBottomRight:
            return (x: CGPoint(x: 0, y: 0), y: CGPoint(x: 1, y: 1))
        case .bottomRightTopLeft:
            return (x: CGPoint(x: 1, y: 1), y: CGPoint(x: 0, y: 0))
        case .topRightBottomLeft:
            return (x: CGPoint(x: 1, y: 0), y: CGPoint(x: 0, y: 1))
        case .bottomLeftTopRight:
            return (x: CGPoint(x: 0, y: 1), y: CGPoint(x: 1, y: 0))
        }
    }
}

public class GradientLayer : CAGradientLayer {
    public var gradient: GradientType? {
        didSet {
            startPoint = gradient?.x ?? CGPoint.zero
            endPoint = gradient?.y ?? CGPoint.zero
        }
    }
}

public class GradientView: UIView {
    override public class var layerClass: Swift.AnyClass {
        get {
            return GradientLayer.self
        }
    }
}

public protocol GradientViewProvider {
    associatedtype GradientViewType
}

public extension GradientViewProvider where Self: UIView, Self.GradientViewType: CAGradientLayer {
    public var gradientLayer: Self.GradientViewType {
        return layer as! Self.GradientViewType
    }
}

extension UIView: GradientViewProvider {
    public typealias GradientViewType = GradientLayer
}
