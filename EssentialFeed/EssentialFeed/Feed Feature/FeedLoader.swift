//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Fernando Zaldivar on 8/10/23.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping(LoadFeedResult) -> Void)
}
