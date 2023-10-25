//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Fernando Zaldivar on 13/10/23.
//

import Foundation

internal final class FeedItemsMapper {
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }
    private static var OK_200: Int { 200 }
    
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem]  {
        guard response.statusCode == FeedItemsMapper.OK_200,
              let root =  try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteFeedLoader.Error.invalidData
        }
        
        return root.items
    }
}
