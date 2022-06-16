//
//  MainRaceViewController.swift
//  SwiftRace
//
//  Created by Michael on 6/16/22.
//

import UIKit

class MainRaceViewController: UIViewController {

    @IBOutlet weak var stripeOne: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        firstCoordinates()
        stripeAnimations()
        
    }

    func stripeAnimations() {
        UILabel.animate(withDuration: 0.5, delay: 1, options: [.repeat], animations: {
            self.stripeOne.center = CGPoint(x: self.stripeOne.center.x, y: 1200)
        }, completion: nil)
    }

    func firstCoordinates() {
        stripeOne.center = CGPoint(x: stripeOne.center.x, y: -200)
      
    }
    
}
