//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Fernando Zaldivar on 8/10/23.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping(LoadFeedResult) -> Void)
}
