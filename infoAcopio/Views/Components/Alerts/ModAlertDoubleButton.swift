//
//  ModAlertDoubleButton.swift
//  LinioUI
//
//  Created by Danilo Souza on 31/05/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit
import NibDesignable

public protocol ModAlertDoubleButtonDelegate: class {
    func onTapPrimary(mod: ModAlertDoubleButton)
    func onTapSecondary(mod: ModAlertDoubleButton)
}

public class ModAlertDoubleButton: NibDesignable {
    
    weak public var delegate: ModAlertDoubleButtonDelegate?
    weak public var hostController: UIViewController?
    
    @IBOutlet weak public var imageView: UIImageView!
    @IBOutlet weak public var titleLabel: Heading!
    @IBOutlet weak public var detailsLabel: Heading!
    @IBOutlet weak public var btPrimary: DefaultButton!
    @IBOutlet weak public var btSecondary: DefaultButton!
    
    @IBInspectable public var secondaryButtonHighlighted: Bool = false {
        didSet {
            if secondaryButtonHighlighted {
                btSecondary.styleName = ButtonStyleSheet.secondaryDisabledSm.rawValue
                setNeedsLayout()
            } else {
                btSecondary.styleName = ButtonStyleSheet.secondaryDisabledSm.rawValue
            }
        }
    }
    
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
    
    @IBInspectable public var primaryButtonTitle: String? {
        didSet {
            btPrimary.setTitle(primaryButtonTitle, for: .normal)
        }
    }
    
    @IBInspectable public var secondaryButtonTitle: String? {
        didSet {
            btSecondary.setTitle(secondaryButtonTitle, for: .normal)
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
    
    public func  setupView() {
        btPrimary.addTarget(self, action: #selector(onTapPrimaryButton), for: .touchUpInside)
        btSecondary.addTarget(self, action: #selector(onTapSecondaryButton), for: .touchUpInside)
    }
    
    func onTapPrimaryButton() {
        delegate?.onTapPrimary(mod: self)
    }
    
    func onTapSecondaryButton() {
        delegate?.onTapSecondary(mod: self)
    }
    
    override public var intrinsicContentSize: CGSize {
        // Width must be set from outside.
        // We return 0 (zero) for height
        // because it will be calculated by autolayout.
        return CGSize(width: UIViewNoIntrinsicMetric, height: 0)
    }

}
