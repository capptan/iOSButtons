//
//  ViewController.swift
//  iOSButtons
//
//  Created by Joel Sene on 04/25/2017.
//  Copyright (c) 2017 Joel Sene. All rights reserved.
//

import UIKit
import iOSButtons

class ViewController: UIViewController {

	@IBOutlet weak var buttonOne: RaisedButton!
	@IBOutlet weak var buttonTwo: RaisedButton!
	@IBOutlet weak var buttonTree: RaisedButton!
	@IBOutlet weak var stackTags: UIStackView!
	@IBOutlet weak var stackLabels: UIStackView!
	@IBOutlet weak var choiceOne: RaisedButton!
	@IBOutlet weak var choiceTwo: RaisedButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

	@IBAction func buttonOneTapped(_ sender: Any) {
		buttonOne.flash()
		choiceOne.flash()
	}

	@IBAction func twoTapped(_ sender: Any) {
		buttonTwo.pressed()
		choiceTwo.jitter()
	}
	@IBAction func treeTapped(_ sender: Any) {
		buttonTree.jitter()
		choiceOne.pressed()
	}

}

