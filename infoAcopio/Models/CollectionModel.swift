//
//  CollectionModel.swift
//  LinioUIKit
//
//  Created by Danilo Souza on 08/09/17.
//  Copyright © 2017 Linio. All rights reserved.
//

import UIKit

open class CollectionModel {
    public weak var collectionView: UICollectionView?
    public var sections: [CollectionSectionModel] = []
    
    public init() { }
    
    public func addSection(_ section: CollectionSectionModel) {
        section.collectionModel = self
        self.sections.append(section)
    }
    
    public func updateSectionByIndex(_ index: Int, section: CollectionSectionModel) {
        if let _ = getSection(index: index) {
            self.sections[index] = section
        }
    }
    
    public func getSection(index: Int) -> CollectionSectionModel? {
        guard index < sections.count else {
            return nil
        }
        
        return sections[index]
    }
    
    public func getSection(indexPath: IndexPath) -> CollectionSectionModel? {
        return getSection(index: indexPath.section)
    }
    
    public func getSectionById(id: String) -> CollectionSectionModel? {
        return sections.filter { $0.sectionId == id }.first
    }
    
    public func getItem(indexPath: IndexPath) -> CollectionItemModel? {
        let section = indexPath.section
        let item = indexPath.item
        
        guard section < sections.count else {
            return nil
        }
        
        let selectedSection = sections[section]
        
        guard item < selectedSection.items.count else {
            return nil
        }
        
        let selectedItem = selectedSection.items[item]
        return selectedItem
    }
    
    public func getCellById(id: String) -> CollectionItemModel? {
        for section in sections {
            if let cell = section.getCellById(id: id) {
                return cell
            }
        }
        
        return nil
    }
    
    public func getSectionCount(section: Int) -> Int {
        guard section < sections.count else {
            return 0
        }
        
        return sections[section].items.count
    }
    
    public func removeAll() {
        sections.removeAll()
    }
    
    public func removeSection(_ section: CollectionSectionModel) {
        if let indexToRemove = self.sections.index(of: section) {
            self.sections.remove(at: indexToRemove)
        }
    }
}
