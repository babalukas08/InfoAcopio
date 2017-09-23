//
//  CollectionItemModel.swift
//  LinioUIKit
//
//  Created by Danilo Souza on 08/09/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit

public protocol CollectionItemModBased {
    func configureCell(cellView: UIView, cell: CollectionItemModel?)
    static func registerCell(collectionViewDataSource: ModGenericCollectionViewDataSource)
}

open class CollectionItemModel: Equatable {
    open var cellType: String = ""
    open var cellModel: Any?
    open var referenceModel: Any?
    open var indexPath: IndexPath?
    open var size: CGSize = CGSize.zero
    open var isFullWidth: Bool = false
    open var configureBlock: ((UIView, CollectionItemModel?) -> Void)?
    open var cellId: String?
    weak open var section: CollectionSectionModel?
    
    public static func ==(lhs: CollectionItemModel, rhs: CollectionItemModel) -> Bool {
        return lhs === rhs
    }
    
    public init(_ type: String, _ model: Any? = nil) {
        self.cellType = type
        self.cellModel = model
    }
    
    open func getComputedSize() -> CGSize {
        guard
            let collectionView = section?.collectionModel?.collectionView,
            let columns = section?.layout.columns,
            let gutter = section?.layout.gutter,
            let insets = section?.layout.insets
            else {
                return CGSize.zero
        }
        
        if self.size.width != 0 && self.size.height != 0 {
            return size
        }
        
        if self.size.width != 0 && self.size.height != 0 {
            return size
        }
        
        let availableWidth = CGFloat(collectionView.frame.width - insets.left - insets.right)
        let gutterSpace = (CGFloat(columns - 1) * gutter)
        let columnWidth = CGFloat((availableWidth - gutterSpace) / CGFloat(columns))
        
        var calculatedSize = self.size
        calculatedSize.width = columnWidth
        
        if isFullWidth {
            calculatedSize.width = availableWidth
        }
        
        return calculatedSize
    }
    
}

