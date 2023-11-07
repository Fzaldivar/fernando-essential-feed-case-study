//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Fernando Zaldivar on 8/10/23.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    func load(completion: @escaping(Result) -> Void)
}
