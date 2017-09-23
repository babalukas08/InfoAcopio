//
//  ModGenericCollectionViewDataSource.swift
//  Linio
//
//  Created by Danilo Souza on 25/07/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit

public protocol ModGenericCollectionViewDataSourceDelegate: class {
    
    func onTapCell(cell: CollectionItemModel, indexPath: IndexPath)
    func onShouldPaginate(dataSource: ModGenericCollectionViewDataSource)
    func onPageChange(dataSource: ModGenericCollectionViewDataSource, page: Int)
    
}

public extension ModGenericCollectionViewDataSourceDelegate {
    
    // Empty implementation - optional protocol method
    func onTapCell(cell: CollectionItemModel, indexPath: IndexPath) {
        // empty implementation
    }
    
    // Empty implementation - optional protocol method
    func onShouldPaginate(dataSource: ModGenericCollectionViewDataSource) {
        // empty implementation
    }
    
    // Empty implementation - optional protocol method
    func onPageChange(dataSource: ModGenericCollectionViewDataSource, page: Int) {
        // empty implementation
    }
    
}

open class ModGenericCollectionViewDataSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    public weak var delegate: ModGenericCollectionViewDataSourceDelegate?
    public var collectionModel: CollectionModel
    public var collectionView: UICollectionView
    
    fileprivate let noneCell = "noneCell"
    fileprivate let noneHeader = "noneHeader"
    
    public var useStickyHeaders = false {
        didSet {
            if useStickyHeaders {
                let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
                layout?.sectionHeadersPinToVisibleBounds = true
            }
        }
    }
    
    public init(collectionView: UICollectionView, collectionModel: CollectionModel) {
        self.collectionView = collectionView
        self.collectionModel = collectionModel
        
        super.init()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        registerCells()
    }
    
    fileprivate func registerCells() {
        collectionView.register(ModCollectionViewCell<UICollectionViewCell>.self, forCellWithReuseIdentifier: noneCell)
        
        registerHeaderClass(celltype: noneHeader, cellClass: ModCollectionViewReusableView<UIView>.self)
    }
    
    public func registerCellClass(cellType: String, cellClass: UICollectionViewCell.Type) {
        collectionView.register(cellClass, forCellWithReuseIdentifier: cellType)
    }
    
    public func registerHeaderClass(celltype: String, cellClass: UICollectionReusableView.Type) {
        collectionView.register(
            cellClass,
            forSupplementaryViewOfKind: UICollectionElementKindSectionHeader,
            withReuseIdentifier: celltype)
    }
    
    // Number of sections
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return collectionModel.sections.count
    }
    
    // Number of items in section
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionModel.getSectionCount(section: section)
    }
    
    // Dequeue cell
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cellData = collectionModel.getItem(indexPath: indexPath) else {
            return collectionView.dequeueReusableCell(withReuseIdentifier: noneCell, for: indexPath)
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellData.cellType, for: indexPath)
        
        if let configureBlock = cellData.configureBlock {
            configureBlock(cell, cellData)
        }
        
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cellData = collectionModel.getItem(indexPath: indexPath) else {
            return
        }
        
        delegate?.onTapCell(cell: cellData, indexPath: indexPath)
    }
    
    // Size for cell
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        guard let item = collectionModel.getItem(indexPath: indexPath) else {
            return CGSize.zero
        }
        
        let size = item.getComputedSize()
        return size
    }
    
    // Insets for section
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        guard let sectionLayout = collectionModel.getSection(index: section)?.layout else {
            return UIEdgeInsets.zero
        }
        
        return sectionLayout.insets
    }
    
    // Line spacing inside section
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        guard let sectionLayout = collectionModel.getSection(index: section)?.layout else {
            return 0
        }
        
        return sectionLayout.lineSpacing
    }
    
    // Header view
    public func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard kind == UICollectionElementKindSectionHeader else {
            return collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionElementKindSectionHeader,
                withReuseIdentifier: noneHeader,
                for: indexPath)
        }
        
        guard let section = collectionModel.getSection(index: indexPath.section) else {
            return collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionElementKindSectionHeader,
                withReuseIdentifier: noneHeader,
                for: indexPath)
        }
        
        guard let headerCell = section.layout.headerCell else {
            return collectionView.dequeueReusableSupplementaryView(
                ofKind: UICollectionElementKindSectionHeader,
                withReuseIdentifier: noneHeader,
                for: indexPath)
        }
        
        let header = collectionView.dequeueReusableSupplementaryView(
            ofKind: UICollectionElementKindSectionHeader,
            withReuseIdentifier: headerCell.cellType,
            for: indexPath)
        
        if let configureBlock = headerCell.configureBlock {
            configureBlock(header, headerCell)
        }
        
        return header
    }
    
    // Header size
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        guard let section = collectionModel.getSection(index: section) else {
            return CGSize.zero
        }
        
        guard let sectionHeaderSize = section.layout.getComputedHeaderSize() else {
            return CGSize.zero
        }
        
        return sectionHeaderSize
    }
    
    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset.y
        let maxOffset = scrollView.contentSize.height - scrollView.frame.size.height
        if (maxOffset - offset) <= 40 {
            delegate?.onShouldPaginate(dataSource: self)
        }
    }
    
}
