//
//  ModCollectionViewCell.swift
//  infoAcopio
//
//  Created by Mauricio Jimenez on 24/09/17.
//  Copyright © 2017 com.AlgoBonitoMX. All rights reserved.
//

import UIKit

public protocol ModCollectionViewCellWithDynamicHeight {
    func getModHeight(forWidth: CGFloat) -> CGFloat
}

public class ModCollectionViewCell<ModClass: UIView>: UICollectionViewCell, ModCollectionViewCellWithDynamicHeight {
    
    public var mod: ModClass?
    var horizontalConstraints: [NSLayoutConstraint]?
    var verticalConstraints: [NSLayoutConstraint]?
    
    override public init(frame: CGRect) {
        mod = ModClass()
        super.init(frame: frame)
        
        setupView()
    }
    
    public override func prepareForReuse() {
        if let carousel = mod as? CarouselComponent {
            carousel.prepareForReuse()
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        mod = ModClass()
        super.init(coder: aDecoder)
        
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = UIColor.clear
        self.contentView.addSubview(mod!)
        setupModConstraints()
    }
    
    func setupModConstraints() {
        mod?.translatesAutoresizingMaskIntoConstraints = false
        
        horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[subview]-0-|", options: .directionLeadingToTrailing, metrics: nil, views: ["subview": mod!])
        contentView.addConstraints(horizontalConstraints!)
        
        verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[subview]-0-|", options: .directionLeadingToTrailing, metrics: nil, views: ["subview": mod!])
        contentView.addConstraints(verticalConstraints!)
    }
    
    // This method should only be called if you are using this cell to calculate the dynamic height.
    public func getModHeight(forWidth: CGFloat) -> CGFloat {
        if let mod = self.mod {
            // Remove mod constraints, so we can calculate the dynamic height
            contentView.removeConstraints(horizontalConstraints!)
            contentView.removeConstraints(verticalConstraints!)
            
            let widthConstraint = NSLayoutConstraint(item: mod, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: forWidth)
            
            let leftConstraint = NSLayoutConstraint(item: mod, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem: mod.superview, attribute: NSLayoutAttribute.leading, multiplier: 1, constant: 0)
            
            let topConstraint = NSLayoutConstraint(item: mod, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: mod.superview, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 0)
            
            mod.addConstraint(widthConstraint)
            mod.superview!.addConstraint(leftConstraint)
            mod.superview!.addConstraint(topConstraint)
            
            self.layoutIfNeeded()
            let computedHeight = mod.bounds.size.height
            
            // remove constraints added to calculate dynamic height
            contentView.removeConstraints([leftConstraint, topConstraint])
            mod.removeConstraints([widthConstraint])
            
            // add mod constraints back
            setupModConstraints()
            
            return computedHeight
        }
        
        return 0
    }
    
}
