//
//  ModAlertWebViewSingleButton.swift
//  Pods
//
//  Created by Mauricio Jimenez on 12/07/17.
//
//

import UIKit
import NibDesignable

public protocol ModAlertWebViewSingleButtonDelegate: class {
    func onTapOk(mod: ModAlertWebViewSingleButton)
    func onTapClose(mod: ModAlertWebViewSingleButton)
}

public class ModAlertWebViewSingleButton: NibDesignable {
    
    weak public var delegate: ModAlertWebViewSingleButtonDelegate?
    
    @IBOutlet weak public var imageView: UIImageView!
    @IBOutlet weak public var btClose: UIButton!
    @IBOutlet weak public var btOk: DefaultButton!
    @IBOutlet weak public var webView: UIWebView!
    
    public var textHTML: String = "" {
        didSet {
            webView.loadHTMLStringWithFont(textHTML)
        }
    }
    
    @IBInspectable public var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }
    
    @IBInspectable public var buttonTitle: String? {
        didSet {
            btOk.setTitle(buttonTitle, for: .normal)
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

extension UIWebView {
    
    func loadHTMLStringWithFont(_ htmlString:String) {
        let font = "<font face='FunctionPro-Light'>"
        self.loadHTMLString("\(font)\(htmlString)", baseURL: nil)
    }
}
