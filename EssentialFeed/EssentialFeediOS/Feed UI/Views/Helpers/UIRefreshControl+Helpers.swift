//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Fernando Zaldivar on 6/12/23.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
