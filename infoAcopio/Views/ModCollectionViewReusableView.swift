//
//  ModCollectionViewReusableView.swift
//  infoAcopio
//
//  Created by Mauricio Jimenez on 24/09/17.
//  Copyright © 2017 com.AlgoBonitoMX. All rights reserved.
//


import UIKit

public class ModCollectionViewReusableView<ModClass: UIView>: UICollectionReusableView {
    
    public var mod: ModClass?
    var horizontalConstraints: [NSLayoutConstraint]?
    var verticalConstraints: [NSLayoutConstraint]?
    
    public override init(frame: CGRect) {
        mod = ModClass()
        super.init(frame: frame)
        
        setupView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        mod = ModClass()
        super.init(coder: aDecoder)
        
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = UIColor.clear
        self.addSubview(mod!)
        setupModConstraints()
    }
    
    func setupModConstraints() {
        mod?.translatesAutoresizingMaskIntoConstraints = false
        
        horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[subview]-0-|", options: .directionLeadingToTrailing, metrics: nil, views: ["subview": mod!])
        self.addConstraints(horizontalConstraints!)
        
        verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[subview]-0-|", options: .directionLeadingToTrailing, metrics: nil, views: ["subview": mod!])
        self.addConstraints(verticalConstraints!)
    }
    
    
}
