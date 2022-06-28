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
    let randForDelay = TimeInterval(Int.random(in: 1..<4))

    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var viewBorderLeft: UILabel!
    @IBOutlet weak var viewBorderRight: UILabel!
    
    @IBOutlet weak var stripeOne: UILabel!
    
    @IBOutlet weak var carOutlet: UIImageView!
    
    @IBOutlet weak var policeLeft: UIImageView!
    @IBOutlet weak var policeRight: UIImageView!
    
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstCoordinates()
        stripeAnimations()
        animationsForCrash()
        timer()
        crash()
        carImageInGame()
        
    }
    
    //MARK: - moving car
    //MARK: -

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
    
    //MARK: - back to start menu
    //MARK: -

    
    @IBAction func backButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    
    //MARK: - animate road
    //MARK: -

    func stripeAnimations() {
        UILabel.animate(withDuration: 0.5, delay: 1, options: [.repeat], animations: {
            self.stripeOne.center = CGPoint(x: self.stripeOne.center.x, y: 1200)
        }, completion: nil)
    }

    //MARK: - first coordinates
    //MARK: -

    func firstCoordinates() {
        stripeOne.center = CGPoint(x: stripeOne.center.x, y: -200)
        
        policeLeft.center = CGPoint(x: policeLeft.center.x + randomNum, y: -300 + randomNum)
        policeRight.center = CGPoint(x: policeRight.center.x - randomNum, y: -500 - randomNum)
      
    }
    
    //MARK: - animate crash
    //MARK: -

    func animationsForCrash() {
        UIView.animate(withDuration: 4, delay: 2 + randForDelay, options: [.repeat], animations: {
            self.policeLeft.center = CGPoint(x: self.policeLeft.center.x, y: 1200)
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 3 + randForDelay, options: [.repeat], animations: {
            self.policeRight.center = CGPoint(x: self.policeRight.center.x, y: 1200)
        }, completion: nil)
    }
    
    //MARK: - physic contact
    //MARK: -
    
    func timer() {
        timerMain = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { (_) in
            if  self.carOutlet.frame.intersects(self.viewBorderLeft.frame) == true || self.carOutlet.frame.intersects(self.viewBorderRight.frame) == true || self.policeLeft.layer.presentation()?.frame.intersects(self.carOutlet.frame) == true ||
                self.policeRight.layer.presentation()?.frame.intersects(self.carOutlet.frame) == true {
                self.crash()
                self.timerMain?.invalidate()
                
                UIView.animate(withDuration: 2) {
                    self.carOutlet.transform = CGAffineTransform(rotationAngle: (CGFloat(Double.pi - Double(Int.random(in: 1..<50)))))
                }
            }
        }
        
        timerMain?.fire()
    }
    
    //MARK: - crash alert
    //MARK: -

    
    func crash() {
//        let blurredView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
//        blurredView.frame = self.view.bounds
//        mainView.addSubview(blurredView)
//
       
//        let alertController = UIAlertController(title: " CRASH ", message: "try again", preferredStyle: .alert)
//        let alertAction = UIAlertAction(title: "Go back", style: .default) { (_) in
        
        
        let alertController = UIAlertController(title: NSLocalizedString("text_AlertController_title", comment: ""), message: NSLocalizedString("text_AlertController_message", comment: ""), preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: NSLocalizedString("text_AlertAction_title", comment: "") , style: .default) { (_) in
           
            self.navigationController?.popViewController(animated: true)
        }
        
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    
    //MARK: - car in game
    //MARK: -

    
    func carImageInGame() {
        if SettingViewController.carImageNumber == 0 {
            carOutlet.image = UIImage(named: "car1")
        } else if SettingViewController.carImageNumber == 1 {
            carOutlet.image = UIImage(named: "car2")
        } else if SettingViewController.carImageNumber == 2 {
            carOutlet.image = UIImage(named: "car3")
        } else if SettingViewController.carImageNumber == 3 {
            carOutlet.image = UIImage(named: "car4")
        } else if SettingViewController.carImageNumber == 4 {
            carOutlet.image = UIImage(named: "car5")
        } else if SettingViewController.carImageNumber == 5 {
            carOutlet.image = UIImage(named: "car6")
        }
    }
    
}
