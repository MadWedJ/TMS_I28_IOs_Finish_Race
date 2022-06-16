//
//  ViewController.swift
//  SwiftRace
//
//  Created by Michael on 6/15/22.
//

import UIKit

class RaceViewController: UIViewController {
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        stripeAnimations()
    }

    func stripeAnimations() {
        UIView.animate(withDuration: 4, delay: 0, options: [.repeat], animations: {
            self.stripeOne.center = CGPoint(x: self.stripeOne.center.x, y: 1200)
        }, completion: nil)
    }

}

