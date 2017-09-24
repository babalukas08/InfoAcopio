//
//  StylableTextField.swift
//  infoAcopio
//
//  Created by Mauricio Jimenez on 24/09/17.
//  Copyright © 2017 com.AlgoBonitoMX. All rights reserved.
//


import UIKit

public class StylableTextField: UITextField, TextStylable {
    
    // Stylable protocol
    @IBInspectable public var styleName: String? = "" {
        didSet {
            self.styleNameDidSet()
        }
    }
    
    // TextStylable protocol
    public var textStyle: TextStyle?
    
    override public var text: String? {
        didSet {
            applyStyle()
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
        applyStyle()
    }
    
    public func applyStyle() {
        applyBasicTextStyle()
    }
    
    
}
