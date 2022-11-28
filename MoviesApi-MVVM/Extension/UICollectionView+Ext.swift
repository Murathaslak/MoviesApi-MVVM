//
//  UICollectionView+Ext.swift
//  MoviesApi-MVVM
//
//  Created by Osman Murat Haslak on 27.11.2022.
//

import UIKit

extension UICollectionView {
    func reloadOnMainThread(){
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
