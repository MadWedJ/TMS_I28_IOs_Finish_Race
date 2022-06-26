//
//  MainRaceViewController.swift
//  SwiftRace
//
//  Created by Michael on 6/16/22.
//

import UIKit

class MainRaceViewController: UIViewController {
    
    var timerMain: Timer? = nil
    
    let randomNum = CGFloat(Int.random(in: 1..<100))
    let randForDelay = TimeInterval(Int.random(in: 1..<3))

    @IBOutlet var mainView: UIView!
//    @IBOutlet var roadView: UIView!

    
    
    @IBOutlet weak var viewBorderLeft: UILabel!
    @IBOutlet weak var viewBorderRight: UILabel!
    
    
    @IBOutlet weak var stripeOne: UILabel!
    @IBOutlet weak var carOutlet: UIImageView!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view
        firstCoordinates()
        stripeAnimations()
        carImageInGame()
        
    }
    
    
    @IBAction func panCar(_ sender: UIPanGestureRecognizer) {
        print("pan")
//        pan - enabled
        
        let translation = sender.translation(in: view)
        guard let gestureView = sender.view else {
            return
        }

        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: carOutlet.center.y)

        sender.setTranslation(.zero, in: view)
    }
    
    func stripeAnimations() {
        UILabel.animate(withDuration: 0.5, delay: 1, options: [.repeat], animations: {
            self.stripeOne.center = CGPoint(x: self.stripeOne.center.x, y: 1200)
        }, completion: nil)
    }

    func firstCoordinates() {
        stripeOne.center = CGPoint(x: stripeOne.center.x, y: -200)
      
    }
    
    func carImageInGame() {
//        if SettingViewController.carImageNumber == 0 {
//            carOutlet.image = UIImage(named: "car1")
//        } else if SettingViewController.carImageNumber == 1 {
//            carOutlet.image = UIImage(named: "car2")
//        } else if SettingViewController.carImageNumber == 2 {
//            carOutlet.image = UIImage(named: "car3")
//        }
    }
    
}
