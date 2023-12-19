//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Fernando Zaldivar on 19/12/23.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
