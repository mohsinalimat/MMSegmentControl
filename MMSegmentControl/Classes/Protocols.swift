//
//  Protocols.swift
//  MMSegmentControl
//
//  Created by Mohsinali Matiya on 05/25/2017.
//  Copyright (c) 2017 Mohsinali Matiya. All rights reserved.
//

import UIKit

public protocol MMSegmentedControlDelegate: class {
    func MMSegmentedControl(_ MMSegmentedControl: MMSegmentedControl, didSelectIndex selectedIndex: Int)
    func MMSegmentedControl(_ MMSegmentedControl: MMSegmentedControl, didLongPressIndex longPressIndex: Int)
}

public extension MMSegmentedControlDelegate {
    func MMSegmentedControl(_ MMSegmentedControl: MMSegmentedControl, didSelectIndex selectedIndex: Int) {

    }

    func MMSegmentedControl(_ MMSegmentedControl: MMSegmentedControl, didLongPressIndex longPressIndex: Int) {

    }
}
