//
//  CollectionSectionModel.swift
//  LinioUIKit
//
//  Created by Danilo Souza on 08/09/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit

open class CollectionSectionModel: Equatable {
    weak var collectionModel: CollectionModel?
    public var items: [CollectionItemModel] = []
    public var sectionId: String?
    public var layout: CollectionSectionLayout = CollectionSectionLayout() {
        didSet {
            layout.section = self
        }
    }
    
    public static func ==(lhs: CollectionSectionModel, rhs: CollectionSectionModel) -> Bool {
        return lhs === rhs
    }
    
    public func append(item: CollectionItemModel) {
        item.section = self
        items.append(item)
    }
    
    public func getCellById(id: String) -> CollectionItemModel? {
        return items.filter { $0.cellId == id }.first
    }
    
    public func removeAll() {
        items.removeAll()
    }
    
    public init() {
        layout.section = self
    }
}


open class CollectionSectionLayout: Equatable {
    public weak var section: CollectionSectionModel?
    public var insets: UIEdgeInsets = .zero
    public var lineSpacing: CGFloat = 0
    public var gutter: CGFloat = 0
    public var columns: Int = 1
    public var headerSize: CGSize?
    public var headerCell: CollectionItemModel? {
        didSet {
            headerCell?.section = self.section
        }
    }
    
    public func getComputedHeaderSize() -> CGSize? {
        if let headerCell = self.headerCell {
            return headerCell.getComputedSize()
        } else {
            return self.headerSize
        }
    }
    
    public static func ==(lhs: CollectionSectionLayout, rhs: CollectionSectionLayout) -> Bool {
        return lhs.insets == rhs.insets
            && lhs.gutter == rhs.gutter
            && lhs.columns == rhs.columns
            && lhs.headerSize == rhs.headerSize
        
    }
    
    public init() { }
}
