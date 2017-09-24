//
//  ModSnackBarGeneral.swift
//  LinioUI
//
//  Created by Mauricio Jimenez on 06/06/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit
import NibDesignable

public protocol ModSnackBarGeneralDelegate: class {
    func onTapCta(mod: ModSnackBarGeneral)
    func hideSnackBar(mod: ModSnackBarGeneral)
}

public struct ModSnackBarGeneralModel {
    var textSnackBarAlert: String?
    var typeAlert: String?
}

public enum ModSnackBarGeneralType: String {
    case success = "success"
    case error = "error"
    case warning = "warning"
}

@IBDesignable
public class ModSnackBarGeneral: NibDesignable {
    
    weak public var delegate: ModSnackBarGeneralDelegate?

    @IBOutlet weak public var textSnackBarAlert: Heading!
    @IBOutlet weak public var imgSnackBarAlert: UIImageView!
    @IBOutlet weak public var progressBar: UIView!
    @IBOutlet weak public var progressBarWidthContraint: NSLayoutConstraint!
    
    // Stylable protocol
    @IBInspectable public var typeSnackBar: String = "success" {
        didSet {
            switch typeSnackBar {
            case "success":
                imgSnackBarAlert.image = UIImage(named: "ndIcSuccess")
                progressBar.backgroundColor = ColorPallete.green700.asColor()
            case "error":
                imgSnackBarAlert.image = UIImage(named: "ndIcError")
                progressBar.backgroundColor = ColorPallete.red.asColor()
            case "warning":
                imgSnackBarAlert.image = UIImage(named: "ndIcWarning")
                progressBar.backgroundColor = ColorPallete.yellow.asColor()
            default: break
            }
            
        }
    }
    
    @IBInspectable public var iconImage: UIImage? {
        didSet {
            imgSnackBarAlert.image = iconImage
        }
    }
    
    @IBInspectable public var primaryColor: UIColor? {
        didSet {
            progressBar.backgroundColor = primaryColor
            if var textStyle = textSnackBarAlert.textStyle {
                textStyle.color = primaryColor
                textSnackBarAlert.textStyle = textStyle
            }
        }
    }
    
    @IBInspectable public var text: String? {
        didSet {
            textSnackBarAlert.text = text
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
    
    func onTap() {
        self.delegate?.hideSnackBar(mod: self)
    }
    
    func setupView() {
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        self.addGestureRecognizer(tapRecognizer)
    }
    
    public func configure(_ model: ModSnackBarGeneralModel) {
        textSnackBarAlert.text = model.textSnackBarAlert
    }
    
    public func resetProgressBar() {
        self.layer.removeAllAnimations()
        self.progressBar.layer.removeAllAnimations()
        self.progressBarWidthContraint.constant = 0
        self.layoutIfNeeded()
    }
    
    public func animationProgressBar() {
        resetProgressBar()
        
        UIView.animate(withDuration: 6.0, delay: 0.0, options: [], animations: {
            self.progressBarWidthContraint.constant = self.bounds.width
            self.layoutIfNeeded()
        }, completion: { (finished: Bool) in
            if finished && !self.isHidden {
                self.delegate?.hideSnackBar(mod: self)
            }
        })
    }
    
}
