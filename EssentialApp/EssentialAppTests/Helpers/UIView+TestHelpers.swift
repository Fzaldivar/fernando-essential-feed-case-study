//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Fernando Zaldivar on 28/12/23.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
