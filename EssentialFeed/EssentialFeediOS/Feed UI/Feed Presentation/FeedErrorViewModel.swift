//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Fernando Zaldivar on 6/12/23.
//

import Foundation

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
