//
//  UIControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Fernando Zaldivar on 25/11/23.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
