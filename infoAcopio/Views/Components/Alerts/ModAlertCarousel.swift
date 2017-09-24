//
//  ModAlertCarousel.swift
//  LinioUI
//
//  Created by Danilo Souza on 01/06/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit
import NibDesignable

public protocol ModAlertCarouselDelegate: class {
    func onTapOk(mod: ModAlertCarousel)
    func onTapSkip(mod: ModAlertCarousel)
}

public class ModAlertCarousel: NibDesignable {
    
    weak public var delegate: ModAlertCarouselDelegate?
    
    @IBOutlet public weak var imageView: UIImageView!
    @IBOutlet public weak var titleLabel: Heading!
    @IBOutlet public weak var detailsLabel: Heading!
    @IBOutlet public weak var btOk: DefaultButton!
    @IBOutlet public weak var btSkip: SimpleStylableButton!
    @IBOutlet public weak var pageControl: UIPageControl!
    
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
    
    @IBInspectable public var buttonSkipTitle: String? {
        didSet {
            btSkip.setTitle(buttonTitle, for: .normal)
        }
    }
    
    @IBInspectable public var numberOfPages: Int? {
        didSet {
            pageControl.numberOfPages = numberOfPages ?? 0
        }
    }
    
    @IBInspectable public var currentPage: Int? {
        didSet {
            pageControl.currentPage = currentPage ?? 0
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
        btSkip.addTarget(self, action: #selector(onTapSkip), for: .touchUpInside)
    }
    
    func onTapOk() {
        delegate?.onTapOk(mod: self)
    }
    
    func onTapSkip() {
        delegate?.onTapSkip(mod: self)
    }
    
    override public var intrinsicContentSize: CGSize {
        // Width must be set from outside.
        // We return 0 (zero) for height
        // because it will be calculated by autolayout.
        return CGSize(width: UIViewNoIntrinsicMetric, height: 0)
    }
    
}
