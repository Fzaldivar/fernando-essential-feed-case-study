//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Fernando Zaldivar on 8/10/23.
//

import Foundation

public struct FeedItem: Equatable {
    public let id: UUID
    public let description: String?
    public let location: String?
    public let imageURL: URL
}
