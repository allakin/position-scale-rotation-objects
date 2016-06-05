//
//  ViewController.swift
//  Gestures
//
//  Created by Павел Анплеенко on 05/06/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	
	@IBAction func handlerPan(sender: UIPanGestureRecognizer) {
	 let translation = sender.translationInView(self.view)
		if let view = sender.view {
			view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
		}
		
		sender.setTranslation(CGPointZero, inView: self.view)
	}
	
	@IBAction func handlePinch(sender: UIPinchGestureRecognizer) {
		if let view = sender.view{
			view.transform = CGAffineTransformScale(view.transform, sender.scale, sender.scale)
			 sender.scale = 1
		}
	}
	
	@IBAction func handleRotate(sender: UIRotationGestureRecognizer) {
		if let view = sender.view{
			view.transform = CGAffineTransformRotate(view.transform, sender.rotation)
			sender.rotation = 0
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

