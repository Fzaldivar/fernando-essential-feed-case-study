//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Fernando Zaldivar on 19/12/23.
//

import XCTest
import EssentialFeed

extension XCTestCase {
    func anyURL() -> URL {
        return URL(string: "http://a-url.com")!
    }
    
    func anyNSError() -> NSError {
        return NSError(domain: "any error", code: 0)
    }
    
    func uniqueFeed() -> [FeedImage] {
        return [FeedImage(id: UUID(), description: "any", location: "any", url: anyURL())]
    }
    
    func anyData() -> Data {
        return Data("any data".utf8)
    }
}
