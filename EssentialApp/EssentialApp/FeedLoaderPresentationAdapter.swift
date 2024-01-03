//
//  FeedLoaderPresentationAdapter.swift
//  EssentialFeediOS
//
//  Created by Fernando Zaldivar on 2/12/23.
//

import Foundation
import EssentialFeed
import EssentialFeediOS
import Combine

final class FeedLoaderPresentationAdapter: FeedViewControllerDelegate {
    private let feedLoader: () -> FeedLoader.Publisher
    private var cancellable: Cancellable?
    
    var presenter: FeedPresenter?
    
    init(feedLoader: @escaping () -> FeedLoader.Publisher) {
        self.feedLoader = feedLoader
    }
    
    func didRequestFeedRefresh() {
        presenter?.didStartLoadingFeed()
        
        cancellable = feedLoader().sink(
            receiveCompletion: { [weak self] completion in
                switch completion {
                case .finished: break
                case let .failure(error):
                    self?.presenter?.didFinishLoadingFeed(with: error)
                }
            } ,receiveValue: { [weak self] feed in
                self?.presenter?.didFinishLoadingFeed(with: feed)
            })
    }
}
