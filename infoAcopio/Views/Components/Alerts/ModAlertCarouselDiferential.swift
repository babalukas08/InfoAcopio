//
//  ModAlertCarouselText.swift
//  Pods
//
//  Created by Danilo Souza on 13/07/17.
//
//

import Foundation
import UIKit
import NibDesignable

public protocol ModAlertCarouselDiferentialDelegate: class {
    func onTapClose(mod: ModAlertCarouselDiferential)
}

public class ModAlertCarouselDiferential: NibDesignable {
    
    weak public var delegate: ModAlertCarouselDiferentialDelegate?
    
    @IBOutlet public weak var imageView: UIImageView!
    @IBOutlet public weak var titleLabel: Heading!
    @IBOutlet public weak var detailsTextView: StylableTextView!
    @IBOutlet public weak var pageControl: UIPageControl!
    @IBOutlet public weak var btClose: UIButton!
    
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
            detailsTextView.text = details
        }
    }
    
    @IBInspectable public var htmlDetails: String? {
        didSet {
            guard let htmlDetails = htmlDetails else {
                return
            }
            
            if let attributedStringFromHtml = detailsTextView.attributedStringFromHtmlString(htmlString: htmlDetails) {
                self.detailsTextView.text = nil
                self.detailsTextView.attributedText = attributedStringFromHtml
                self.detailsTextView.applyStyle()
            }
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
        pageControl.isHidden = true
        btClose.addTarget(self, action: #selector(onTapClose), for: .touchUpInside)
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
