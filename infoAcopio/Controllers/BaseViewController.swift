//
//  BaseViewController.swift
//  infoAcopio
//
//  Created by Mauricio Jimenez on 24/09/17.
//  Copyright © 2017 com.AlgoBonitoMX. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

class BaseViewController: UIViewController, AlertController {
    
    fileprivate var isProgressViewVisible = false
    var manageKeyBoard = false
 
    
    lazy var modSnackBar: ModSnackBarGeneral = {
        let snack = ModSnackBarGeneral()
        snack.delegate = self
        snack.isHidden = true
        self.view.addSubview(snack)
        
        snack.snp.makeConstraints({ (make) in
            make.bottom.equalTo(self.view.snp.bottom)
            make.width.equalTo(self.view.snp.width)
            make.height.equalTo(74)
        })
        
        return snack
    }()
    
    var dismissGeneralSnackBarTask: DispatchWorkItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        
        if getUseDefaultBackgroundColor() {
            //            view.backgroundColor = Constants.LinioColors.GrayBackground
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if manageKeyBoard {
            registerKeyBoardNotification()
        }
        
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.screenRotated(_:)), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if manageKeyBoard {
            deRegisterKeyBoardNotification()
        }
        
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
    }
    
    deinit {
        print("deinit \(classForCoder)")
    }
    
    func getUseDefaultBackgroundColor() -> Bool {
        return true
    }
    
    // MARK: - Keyboard
    func registerKeyBoardNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.keyboardWillShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(BaseViewController.keyboardWillHide(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    func getToolBarAccesory() -> UIToolbar {
        let next = UIBarButtonItem(title: ">",style: .plain, target: self, action: #selector(nextButtonKeyBoard))
        let spaceFixed = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.fixedSpace, target: nil, action: nil)
        let previous = UIBarButtonItem(title: "<", style: .plain, target: self, action: #selector(previousButtonKeyBoard))
        let space = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let ok = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonKeyBoard))
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 0))
        
        spaceFixed.width = 16.0
        toolbar.items = [previous,spaceFixed,next,space,ok]
        toolbar.sizeToFit()
        return toolbar
    }
    
    func deRegisterKeyBoardNotification() {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    func screenRotated(_ aNotification:Notification) {
        // Override func when you need to magane screen
    }
    
    func keyboardWillShow(_ aNotification:Notification) {
        // Override func when you need to magane keyboard
    }
    
    func keyboardWillHide(_ aNotification:Notification) {
        // Override func when you need to magane keyboard
    }
    
    func previousButtonKeyBoard() {
        // Override func when you need to magane toolbar
    }
    
    func doneButtonKeyBoard() {
        // Override func when you need to magane toolbar
    }
    
    func nextButtonKeyBoard() {
        // Override func when you need to magane toolbar
    }
    
    // MARK: - General share
    func generalShare(_ text: String, sourceView: UIView, image: UIImage? = nil) {
        
        var objectsToShare: [AnyObject] = [text as AnyObject]
        if let image = image {
            objectsToShare.append(image)
        }
        let activityViewController = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        let excludeActivities = [
            UIActivityType.airDrop,
            UIActivityType.print,
            UIActivityType.assignToContact,
            UIActivityType.saveToCameraRoll,
            UIActivityType.addToReadingList,
            UIActivityType.postToFlickr,
            UIActivityType.postToVimeo
        ]
        activityViewController.excludedActivityTypes = excludeActivities
        activityViewController.popoverPresentationController?.sourceView = sourceView
        present(activityViewController, animated: true, completion: nil)
        
    }
    
    // MARK: - Alert messages
    func showMessageDialog(_ title: String, message: String, okHandler: ((UIAlertAction) -> Void)? = nil, cancelHandler: ((UIAlertAction) -> Void)? = nil) {
        let alertViewController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alertViewController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: okHandler))
        if cancelHandler != nil {
            alertViewController.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: cancelHandler))
        }
        present(alertViewController, animated: true, completion: nil)
    }
}

// MARK: - Snackbars
extension BaseViewController: ModSnackBarGeneralDelegate {
    
    func onTapCta(mod: ModSnackBarGeneral) {
        dismissSnackBar()
    }
    
    func hideSnackBar(mod: ModSnackBarGeneral) {
        dismissSnackBar()
    }
    
    func showSnackBar(type: SnackBarType, message: String) {
        let bundle = Bundle(for: ModSnackBarGeneral.self)
        var iconImage: UIImage?
        var primaryColor: UIColor = UIColor.white
        
        switch type {
        case .error:
            iconImage = UIImage(named: "ndIc48Error", in: bundle, compatibleWith: nil)
            primaryColor = ColorPallete.red.asColor()
        case .success:
            iconImage = UIImage(named: "ndIc48Success", in: bundle, compatibleWith: nil)
            primaryColor = ColorPallete.green700.asColor()
        case .warning:
            iconImage = UIImage(named: "ndIc48Warning", in: bundle, compatibleWith: nil)
            primaryColor = ColorPallete.amber700.asColor()
            
        default:
            break
        }
        
        modSnackBar.iconImage = iconImage
        modSnackBar.primaryColor = primaryColor
        modSnackBar.text = message
        modSnackBar.isHidden = false
        modSnackBar.resetProgressBar()
        
        UIView.animate(withDuration: 0.3, delay: 0, options: [.allowUserInteraction], animations: {
            self.modSnackBar.transform = CGAffineTransform.identity
        }, completion: { finished in
            self.modSnackBar.animationProgressBar()
        })
        
        // cancel current callback and create a new one.
        self.dismissGeneralSnackBarTask?.cancel()
        self.dismissGeneralSnackBarTask = DispatchWorkItem { [weak self] in
            self?.dismissSnackBar()
        }
        
        if let dismissGeneralSnackBarTask = self.dismissGeneralSnackBarTask {
            let delay = DispatchTime.now() + 6
            DispatchQueue.main.asyncAfter(deadline: delay, execute: dismissGeneralSnackBarTask)
        }
    }
    
    func dismissSnackBar() {
        self.dismissGeneralSnackBarTask?.cancel()
        
        guard self.modSnackBar.isHidden == false else {
            return
        }
        
        let hiddenTransform = CGAffineTransform(translationX: 0, y: modSnackBar.frame.height)
        UIView.animate(withDuration: 0.3, delay: 0, options: [.allowUserInteraction], animations: {
            self.modSnackBar.transform = hiddenTransform
        }, completion: { finished in
            self.modSnackBar.isHidden = true
        })
    }
}

enum SnackBarType {
    case custom
    case error
    case warning
    case success
    case favorite
}

