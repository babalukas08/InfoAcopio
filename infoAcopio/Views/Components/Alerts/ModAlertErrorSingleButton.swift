//
//  ModAlertErrorSingleButton.swift
//  LinioUI
//
//  Created by Danilo Souza on 31/05/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit
import NibDesignable

public protocol ModAlertErrorSingleButtonDelegate: class {
    func onTapOk(mod: ModAlertErrorSingleButton)
    func onTapClose(mod: ModAlertErrorSingleButton)
}

public class ModAlertErrorSingleButton: NibDesignable {
    
    weak public var delegate: ModAlertErrorSingleButtonDelegate?
    
    @IBOutlet weak public var imageView: UIImageView!
    @IBOutlet weak public var btClose: UIButton!
    @IBOutlet weak public var titleLabel: Heading!
    @IBOutlet weak public var detailsLabel: Heading!
    @IBOutlet weak public var btOk: DefaultButton!
    @IBOutlet weak public var errorLabel: Heading!
    
    @IBInspectable public var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }
    
    @IBInspectable public var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    @IBInspectable public var details: String? {
        didSet {
            detailsLabel.text = details
        }
    }
    
    @IBInspectable public var buttonTitle: String? {
        didSet {
            btOk.setTitle(buttonTitle, for: .normal)
        }
    }
    
    @IBInspectable public var errorMessage: String? {
        didSet {
            errorLabel.text = details
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
        btOk.addTarget(self, action: #selector(onTapOk), for: .touchUpInside)
        btClose.addTarget(self, action: #selector(onTapClose), for: .touchUpInside)
    }
    
    func onTapOk() {
        delegate?.onTapOk(mod: self)
    }
    
    func onTapClose() {
        delegate?.onTapClose(mod: self)
    }
    
    override public var intrinsicContentSize: CGSize {
        // Width must be set from outside.
        // We return 0 (zero) for height
        // because it will be calculated by autolayout.
        return CGSize(width: UIViewNoIntrinsicMetric, height: 0)
    }
    
}
