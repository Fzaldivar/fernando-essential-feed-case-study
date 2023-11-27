//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Fernando Zaldivar on 25/11/23.
//

import UIKit

final class FeedRefreshViewController: NSObject, FeedLoadingView {
    
    private (set) lazy var view = loadView()
    
    private let loadFeed: () -> Void
    
    init(loadedFeed: @escaping () -> Void) {
        self.loadFeed = loadedFeed
    }
    
    @objc func refresh() {
        loadFeed()
    }
    
    private func loadView() -> UIRefreshControl {
        let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
    
    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            view.beginRefreshing()
        } else {
            view.endRefreshing()
        }
    }
}
