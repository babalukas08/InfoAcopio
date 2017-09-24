//
//  AlertPresenter.swift
//  Linio
//
//  Created by Danilo Souza on 14/09/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import SnapKit

public protocol AlertPresenter {
    var alertTransitionDelegate: UIViewControllerTransitioningDelegate? { get }
    func presentAlert<T: UIView>(_ alert: AlertContainerController<T>)
}

extension AlertPresenter where Self: UIViewController {
    
    public func presentAlert<T: UIView>(_ alert: AlertContainerController<T>) {
        alert.modalPresentationStyle = .overFullScreen
        alert.transitioningDelegate = self.alertTransitionDelegate
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

public class AlertContainerController<AlertClass: UIView>: UIViewController, CardBounceableController {
    public var bgView: UIView?
    public var mod: AlertClass
    
    public var animatingIn: Bool = true
    public var cardBounceTransitionBg: UIView? { return self.bgView }
    public var cardBounceTransitionCardView: UIView? { return self.mod }
    public var cardBounceableTransition: CardBounceableControllerTransition?
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        mod = AlertClass()
        bgView = UIView()
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        mod = AlertClass()
        bgView = UIView()
        
        super.init(coder: aDecoder)
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let bgView = UIView()
        bgView.backgroundColor = ColorPallete.black.asColor(withAlpha: 0.25)
        self.view.addSubview(bgView)
        bgView.snp.makeConstraints { (make) in
            make.width.equalTo(self.view.snp.width)
            make.height.equalTo(self.view.snp.height)
            make.center.equalTo(self.view.center)
        }
        self.bgView = bgView
        
        let bgTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(onTapBg))
        bgView.addGestureRecognizer(bgTapRecognizer)
        
        self.view.addSubview(mod)
        mod.snp.makeConstraints { (make) in
            make.width.equalTo(270)
            make.center.equalTo(self.view.snp.center)
        }
    }
    
    func onTapBg() {
        self.dismiss(animated: true, completion: nil)
    }
}
