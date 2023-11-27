//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Fernando Zaldivar on 26/11/23.
//

import Foundation
import EssentialFeed

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
