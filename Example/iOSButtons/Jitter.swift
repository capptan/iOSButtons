//
//  Jitter.swift
//  iOSButtons
//
//  Created by Joel Sene on 09/05/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

extension UIButton {
	
	func pressed() {
		let animations = CABasicAnimation(keyPath: "position")
		animations.duration = 0.10
		animations.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x + 2.0, y: self.center.y + 3.0))
		layer.add(animations, forKey: "position")
	}

	func jitter() {
		let animation = CABasicAnimation(keyPath: "position")
		animation.duration = 0.05
		animation.repeatCount = 5
		animation.autoreverses = true
		animation.fromValue = NSValue(cgPoint: CGPoint.init(x: self.center.x - 5.0, y: self.center.y))
		animation.toValue = NSValue(cgPoint: CGPoint.init(x: self.center.x + 5.0, y: self.center.y))
		layer.add(animation, forKey: "position")
	}

	func flash() {
		UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn, animations: {
			self.alpha = 0.0
		}) { (animationComplete) in
			if animationComplete == true {
				UIView.animate(withDuration: 0.3, delay: 2.0, options: .curveEaseOut, animations: {
					self.alpha = 1.0
				}, completion: nil)
			}
		}
	}
}
