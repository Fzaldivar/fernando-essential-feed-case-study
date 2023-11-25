//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Fernando Zaldivar on 25/11/23.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
