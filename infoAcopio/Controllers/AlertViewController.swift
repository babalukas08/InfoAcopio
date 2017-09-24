//
//  AlertViewController.swift
//  infoAcopio
//
//  Created by Mauricio Jimenez on 24/09/17.
//  Copyright © 2017 com.AlgoBonitoMX. All rights reserved.
//

import UIKit

public protocol AlertController {
    
    func showSimpleAlert() -> ModAlertSingleButton
    func showSimpleAlertWithError() -> ModAlertErrorSingleButton
    func showDoubleButtonAlertWithError() -> ModAlertDoubleButton
    
}

public extension AlertController where Self: UIViewController {
    
    @discardableResult func showSimpleAlert() -> ModAlertSingleButton {
        let modAlertSingleButton = ModAlertSingleButton()
        modAlertSingleButton.translatesAutoresizingMaskIntoConstraints = false
        
        let hostViewController = AlertHostController()
        hostViewController.view.addSubview(modAlertSingleButton)
        
        setConstraintsForAlert(alert: modAlertSingleButton, containerView: hostViewController.view)
        self.present(hostViewController, animated: true, completion: nil)
        
        return modAlertSingleButton
    }
    
    @discardableResult func showSimpleAlertWithError() -> ModAlertErrorSingleButton {
        let modAlertErrorSingleButton = ModAlertErrorSingleButton()
        modAlertErrorSingleButton.translatesAutoresizingMaskIntoConstraints = false
        
        let hostViewController = AlertHostController()
        hostViewController.view.addSubview(modAlertErrorSingleButton)
        
        setConstraintsForAlert(alert: modAlertErrorSingleButton, containerView: hostViewController.view)
        self.present(hostViewController, animated: true, completion: nil)
        
        return modAlertErrorSingleButton
    }
    
    @discardableResult func showDoubleButtonAlertWithError() -> ModAlertDoubleButton {
        let modAlertErrorSingleButton = ModAlertDoubleButton()
        modAlertErrorSingleButton.translatesAutoresizingMaskIntoConstraints = false
        
        let hostViewController = AlertHostController()
        modAlertErrorSingleButton.hostController = hostViewController
        hostViewController.view.addSubview(modAlertErrorSingleButton)
        
        setConstraintsForAlert(alert: modAlertErrorSingleButton, containerView: hostViewController.view)
        self.present(hostViewController, animated: true, completion: nil)
        
        return modAlertErrorSingleButton
    }
    
    @discardableResult func showInputAlertWithError() -> ModAlertInputSingleButton {
        let modAlertErrorSingleButton = ModAlertInputSingleButton()
        modAlertErrorSingleButton.translatesAutoresizingMaskIntoConstraints = false
        
        let hostViewController = AlertHostController()
        hostViewController.view.addSubview(modAlertErrorSingleButton)
        
        setConstraintsForAlert(alert: modAlertErrorSingleButton, containerView: hostViewController.view)
        self.present(hostViewController, animated: true, completion: nil)
        
        return modAlertErrorSingleButton
    }
    
    // ModAlertInputSingleButton
    
    func setConstraintsForAlert(alert: UIView, containerView: UIView) {
        let widthConstraint = NSLayoutConstraint(
            item: alert,
            attribute: NSLayoutAttribute.width,
            relatedBy: NSLayoutRelation.equal,
            toItem: nil,
            attribute: NSLayoutAttribute.notAnAttribute,
            multiplier: 1,
            constant: 270)
        
        let centerConstraintX = NSLayoutConstraint(
            item: alert,
            attribute: NSLayoutAttribute.centerX,
            relatedBy: NSLayoutRelation.equal,
            toItem: containerView,
            attribute: NSLayoutAttribute.centerX,
            multiplier: 1,
            constant: 0)
        
        let centerConstraintY = NSLayoutConstraint(
            item: alert,
            attribute: NSLayoutAttribute.centerY,
            relatedBy: NSLayoutRelation.equal,
            toItem: containerView,
            attribute: NSLayoutAttribute.centerY,
            multiplier: 1,
            constant: 0)
        
        alert.addConstraint(widthConstraint)
        containerView.addConstraints([centerConstraintX, centerConstraintY])
    }
    
}

class AlertHostController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundView = UIView()
        backgroundView.frame = self.view.bounds
        backgroundView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(backgroundView)
        
        self.view.backgroundColor = ColorPallete.gray900.asColor(withAlpha: 0.5)
        self.modalPresentationStyle = .overFullScreen
        self.modalTransitionStyle = .crossDissolve
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTapBackground))
        backgroundView.addGestureRecognizer(tapGesture)
    }
    
    func onTapBackground() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
