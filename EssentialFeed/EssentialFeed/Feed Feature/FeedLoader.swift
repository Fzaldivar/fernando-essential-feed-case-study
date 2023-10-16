//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Fernando Zaldivar on 8/10/23.
//

import Foundation

public enum LoadFeedResult <Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    associatedtype Error: Swift.Error
    func load(completion: @escaping(LoadFeedResult<Error>) -> Void)
}
