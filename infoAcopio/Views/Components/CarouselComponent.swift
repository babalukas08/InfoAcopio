//
//  CarouselComponent.swift
//  LinioUI
//
//  Created by Mauricio Jimenez on 29/05/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit
import NibDesignable
import AlamofireImage

public protocol CarouselComponentDelegate: class {
    func onTapCell(mod: CarouselComponent, indexPath: IndexPath)
}

public struct CarouselComponentModel {
    var productImage: String?
    var productName: String?
}

public enum CarouselPageControlStateType: String {
    case basePosition
    case emptyState
    case hidden
}

@IBDesignable
public class CarouselComponent: NibDesignable {
    
    public weak var delegate: CarouselComponentDelegate?
    @IBOutlet weak public var collectionView: UICollectionView!
    @IBOutlet weak public var pageControl: UIPageControl!
    @IBOutlet var pageControlBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var collectionViewBottomConstraint: NSLayoutConstraint!
    @IBInspectable public var isFullSized: Bool = false
    
    public var selectedIndex: Int?
    public var sizeitem: CGSize = CGSize(width: 174, height: 178)
    public var insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    public var showPageControl = true
    public var orientation: UICollectionViewScrollDirection = .horizontal
    public var pageControlState: CarouselPageControlStateType = .basePosition
    
    public var dataSource: [UIView] = [] {
        didSet {
            pageControl.numberOfPages = dataSource.count
            pageControlStyleName = self.pageControlState
            self.collectionView.reloadData()
        }
    }
    
    public var pageControlStyleName: CarouselPageControlStateType = .basePosition  {
        didSet {
            switch pageControlStyleName {
            case .basePosition:
                isPageControlBottomAligned = true
                isCollectionViewBottomAligned = false
                pageControl.isHidden = false
                collectionView.isPagingEnabled = true
                collectionView.isScrollEnabled = true
                self.pageControl.currentPageIndicatorTintColor = ColorPallete.primOrange.asColor()
            case .emptyState:
                isPageControlBottomAligned = false
                isCollectionViewBottomAligned = true
                pageControl.isHidden = false
                collectionView.isPagingEnabled = false
                collectionView.isScrollEnabled = false
                self.pageControl.numberOfPages = 5
                self.pageControl.currentPageIndicatorTintColor = ColorPallete.gray300.asColor()
            case .hidden:
                isPageControlBottomAligned = true
                isCollectionViewBottomAligned = false
                pageControl.isHidden = true
                collectionView.isPagingEnabled = true
                collectionView.isScrollEnabled = true
            }
        }
    }
    
    public var isPageControlBottomAligned: Bool = false {
        didSet {
            if isPageControlBottomAligned {
                pageControlBottomConstraint.constant = 0
            } else {
                pageControlBottomConstraint.constant = 16
            }
        }
    }
    
    public var isCollectionViewBottomAligned: Bool = false  {
        didSet {
            if isCollectionViewBottomAligned {
                collectionViewBottomConstraint.constant = 55
            } else {
                collectionViewBottomConstraint.constant = 0
            }
        }
    }
    
    public var itemPaged: Bool = false {
        didSet {
            if itemPaged {
                collectionView.isPagingEnabled = false
            }
        }
    }
    
    private var isInitialSetup: Bool = true
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    public func setupView() {
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.dataSource = self
        collectionView.delegate = self
        createLayout()
    }
    
    public func prepareForReuse() {
        dataSource = []
    }
    
    public func createLayout() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = self.orientation
        collectionView.collectionViewLayout = layout
    }
    
    func getItemSize() -> CGSize {
        if isFullSized {
            return self.bounds.size
        } else {
            return sizeitem
        }
    }
    
    func updateInitialCellPosition() {
        DispatchQueue.main.async { [weak self] in
            guard self != nil else {
                return
            }
            
            if let newIndex = self?.selectedIndex {
                let selectedIndexPath = IndexPath(item: newIndex, section: 0)
                self?.collectionView.scrollToItem(at: selectedIndexPath, at: UICollectionViewScrollPosition.left, animated: false)
            }
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        if isInitialSetup {
            updateInitialCellPosition()
            isInitialSetup = false
        }
    }
}

//MARK: - UICollectionViewDelegate
extension CarouselComponent : UICollectionViewDelegate {
    
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.onTapCell(mod: self, indexPath: indexPath)
    }
    
}

extension CarouselComponent : UICollectionViewDelegateFlowLayout {
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return getItemSize()
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return self.insets
    }
}

//MARK: - UICollectionViewDataSource

extension CarouselComponent : UICollectionViewDataSource {
    
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let view = dataSource[indexPath.row]
        if isFullSized == true {
            view.frame = cell.contentView.bounds
        }
        
        // remove all subViews of cell
        for view in cell.subviews {
            view.removeFromSuperview()
        }
        cell.addSubview(view)
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        self.pageControl.currentPage = indexPath.item
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return insets.right
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return insets.right
    }
}

//MARK: - UISCrollViewDelegate
extension CarouselComponent : UIScrollViewDelegate {
    
    public func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        guard itemPaged == true else {
            return
        }
        
        let pageWidth: Float = Float(getItemSize().width) + Float(insets.right)
        // width + space
        let currentOffset: Float = Float(scrollView.contentOffset.x)
        let targetOffset: Float = Float(targetContentOffset.pointee.x)
        var newTargetOffset: Float = 0
        
        if targetOffset > currentOffset {
            newTargetOffset = ceilf(currentOffset / pageWidth) * pageWidth
        }
        else {
            newTargetOffset = floorf(currentOffset / pageWidth) * pageWidth
        }
        
        if newTargetOffset < 0 {
            newTargetOffset = 0
        }
        else if (newTargetOffset > Float(scrollView.contentSize.width - scrollView.frame.size.width)) {
            newTargetOffset = Float(Float(scrollView.contentSize.width - scrollView.frame.size.width))
        }
        
        targetContentOffset.pointee.x = CGFloat(currentOffset)
        scrollView.setContentOffset(
            CGPoint(x: CGFloat(newTargetOffset), y: scrollView.contentOffset.y),
            animated: true)
    }
}
