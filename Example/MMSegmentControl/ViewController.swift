//
//  ViewController.swift
//  MMSegmentControl
//
//  Created by Mohsinali Matiya on 05/25/2017.
//  Copyright (c) 2017 Mohsinali Matiya. All rights reserved.
//

import UIKit
import MMSegmentControl

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: MMSegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSegmentedControl()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configureSegmentedControl() {
        let titleStrings = ["One", "TwoTwo", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]
        let titles: [NSAttributedString] = {
            let attributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 16), NSForegroundColorAttributeName: UIColor.white]
            var titles = [NSAttributedString]()
            for titleString in titleStrings {
                let title = NSAttributedString(string: titleString, attributes: attributes)
                titles.append(title)
            }
            return titles
        }()
        let selectedTitles: [NSAttributedString] = {
            let attributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 16), NSForegroundColorAttributeName: UIColor.white]
            var selectedTitles = [NSAttributedString]()
            for titleString in titleStrings {
                let selectedTitle = NSAttributedString(string: titleString, attributes: attributes)
                selectedTitles.append(selectedTitle)
            }
            return selectedTitles
        }()
        self.segmentControl.setTitles(titles, selectedTitles: selectedTitles)
        self.segmentControl.backgroundColor = UIColor.blue
        self.segmentControl.delegate = self
        self.segmentControl.layoutPolicy = .dynamic
        self.segmentControl.segmentSpacing = 5
        self.segmentControl.selectionBoxHeight = 30
        self.segmentControl.selectionHorizontalPadding = 15
        self.segmentControl.selectionBoxStyle = .default
        self.segmentControl.selectionBoxCornerRadius = 15
        self.segmentControl.selectionBoxColor = UIColor.orange
        self.segmentControl.isLongPressEnabled = true
        self.segmentControl.isUnselectedSegmentsLongPressEnabled = true
        self.segmentControl.longPressMinimumPressDuration = 0.8
    }
}

extension ViewController: MMSegmentedControlDelegate {
    func segmentedControl(_ segmentedControl: MMSegmentedControl, didSelectIndex selectedIndex: Int) {
        print("Did select index \(selectedIndex)")
        switch segmentedControl.style {
        case .text:
            print("The title is “\(segmentedControl.titles[selectedIndex].string)”\n")
        case .image:
            print("The image is “\(segmentedControl.images[selectedIndex])”\n")
        }
    }
    
    func segmentedControl(_ segmentedControl: MMSegmentedControl, didLongPressIndex longPressIndex: Int) {
        print("Did long press index \(longPressIndex)")
    }
}


