//
//  RoundRect.swift
//  infoAcopio
//
//  Created by Mauricio Jimenez on 24/09/17.
//  Copyright © 2017 com.AlgoBonitoMX. All rights reserved.
//


import UIKit

public protocol RoundRect: class {
    var borderLayer: CAShapeLayer { get set }
    var borderWidth: Int { get set }
    var borderColor: UIColor { get set }
    var cornerRadius: Int { get set }
    var viewShape: ViewStyle.ViewShape? { get set }
    var viewShapeName: String? { get set }
    
    func applyCorners()
}

public extension RoundRect where Self: UIView {
    
    public func viewShapeNameDidSet() {
        // Nil style name; return
        guard let viewShapeName = viewShapeName else {
            return
        }
        
        // Emppty style name; return
        guard viewShapeName.characters.count > 0 else {
            return
        }
        
        // Invalid style name; crash
        guard let viewShapeFromString = ViewStyle.ViewShape(rawValue: viewShapeName) else {
            assertionFailure("Invalid ViewShape Name sent: \(viewShapeName)")
            return
        }
        
        viewShape = viewShapeFromString
        applyCorners()
    }
    
    public func applyCorners() {
        
        var path: UIBezierPath?
        
        var radius = cornerRadius
        if viewShape == .round {
            radius = Int(bounds.height/2.0)
        }
        
        let corners: UIRectCorner = [.topLeft, .topRight, .bottomLeft, .bottomRight]
        
        path = UIBezierPath(roundedRect: bounds,
                            byRoundingCorners: corners,
                            cornerRadii: CGSize(width: radius, height:  radius))
        
        let maskLayer = CAShapeLayer()
        maskLayer.path = path?.cgPath
        layer.mask = maskLayer
        
        borderLayer.path = path?.cgPath
        borderLayer.frame = self.bounds
        borderLayer.lineWidth = CGFloat(borderWidth)
        borderLayer.strokeColor = borderColor.cgColor
        borderLayer.fillColor = UIColor.clear.cgColor
        self.layer.insertSublayer(borderLayer, at: 0)
    }
    
    public func resizeBorderAndMaskLayer() {
        applyCorners()
    }
    
}
