//
//  RatingComponent.swift
//  LinioUI
//
//  Created by Danilo Souza on 26/05/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit
import NibDesignable

public protocol RatingComponentDelegate: class {
    func ratingDidChange(rating: Int)
}

@IBDesignable
public class RatingComponent: NibDesignable, Stylable {
    
    @IBInspectable public var styleName: String? {
        didSet {
            // Nil style name; return
            guard let styleName = styleName else {
                return
            }
            
            // Emppty style name; return
            guard styleName.characters.count > 0 else {
                return
            }
            
            // Invalid style name; crash
            guard let styleFromString = RatingComponentStyleSheet(rawValue: styleName) else {
                assertionFailure("Invalid Style Name sent: \(styleName)")
                return
            }
            
            self.style = styleFromString.getStyle()
        }
    }
    
    public var style: RatingComponentStyle? {
        didSet {
            applyStyle()
        }
    }
    
    weak public var delegate: RatingComponentDelegate?
    let maxRatingValue = 5
    
    @IBOutlet weak var bt1: UIButton!
    @IBOutlet weak var bt2: UIButton!
    @IBOutlet weak var bt3: UIButton!
    @IBOutlet weak var bt4: UIButton!
    @IBOutlet weak var bt5: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    
    @IBInspectable var rating: Int = 0 {
        didSet {
            updateRating()
        }
    }
    
    @IBInspectable var isEditable: Bool = false {
        didSet {
            allButtons.forEach { $0.isUserInteractionEnabled = self.isEditable }
        }
    }
    
    public var allButtons: [UIButton] {
        get {
            return [bt1, bt2, bt3, bt4, bt5]
        }
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    public func setupView() {
        
        allButtons.forEach {
            $0.isUserInteractionEnabled = self.isEditable
            $0.addTarget(self, action: #selector(onTapRatingButton(ratingButton:)), for: .touchUpInside)
        }
    }
    
    public func onTapRatingButton(ratingButton: UIButton) {
        guard isEditable == true else {
            return
        }
        
        if let buttonIndex = allButtons.index(of: ratingButton) {
            rating = buttonIndex + 1
        } else {
            rating = 0
        }
        
        updateRating()
        delegate?.ratingDidChange(rating: rating)
    }
    
    
    
    private func updateRating() {
        allButtons.forEach { $0.isSelected = false }
        var endRange = min(rating, maxRatingValue) // must be smaller than maxRatingValue
        endRange = max(endRange, 0) // can't be negative
        allButtons[0..<endRange].forEach { $0.isSelected = true }
        setNeedsLayout()
    }
    
    override public func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        applyStyle()
    }
    
    public func applyStyle() {
        guard let style = self.style else {
            return
        }
        
        if let margin = style.margin {
            stackView.spacing = CGFloat(margin)
        }
        
        allButtons.forEach { button in
            if let onImage = style.onImage,
                let offImage = style.offImage {
                button.setImage(offImage, for: .normal)
                button.setImage(onImage, for: .selected)
                button.setImage(onImage, for: .highlighted)
                button.setImage(onImage, for: .highlighted)
            }
        }
        
        self.setNeedsLayout()
        self.setNeedsDisplay()
    }
}
