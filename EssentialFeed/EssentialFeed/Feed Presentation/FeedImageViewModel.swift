//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Fernando Zaldivar on 8/12/23.
//

import Foundation

public struct FeedImageViewModel<Image> {
    public let description: String?
    public let location: String?
    public let image: Image?
    public let isLoading: Bool
    public let shouldRetry: Bool

    public var hasLocation: Bool {
        return location != nil
    }
}
