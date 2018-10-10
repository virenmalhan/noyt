//
//  CellHandler.swift
//  noyt
//
//  Created by Viren Malhan on 01/10/18.
//  Copyright © 2018 Wecode. All rights reserved.
//

import UIKit

// MARK: - Identifies each cell though identifier.
protocol CellIndentifiable {
    static var cellIdentifier: String { get }
}

// MARK: -  UICollectionView Cell Indentifies each cell from its classname.
extension CellIndentifiable where Self: UICollectionViewCell {
    static var cellIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionView {
    
    func dequeCell<T: UICollectionViewCell>(indexpath: IndexPath, type: T.Type) -> T {
        return self.dequeueReusableCell(withReuseIdentifier: type.cellIdentifier, for: indexpath) as! T
    }
}

extension UICollectionViewCell: CellIndentifiable {}

// MARK: -  UITableView Cell Indentifies each cell from its classname.

extension CellIndentifiable where Self: UITableViewCell  {
    static var cellIdentifier: String {
        return String(describing: self)
    }
}

extension UITableView {
    
    func dequeCell<T: UITableViewCell>(indexpath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: T.cellIdentifier, for: indexpath) as! T
    }
}

extension UITableViewCell: CellIndentifiable {}

