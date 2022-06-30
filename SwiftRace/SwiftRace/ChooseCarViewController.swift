//
//  SettingViewController.swift
//  SwiftRace
//
//  Created by Michael on 6/21/22.
//

import UIKit

class ChooseCarViewController: UIViewController {
    
    static var carImageNumber = 0
    
    var carImages = [UIImage]()
    
    @IBOutlet weak var carSelectOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carImages.append(UIImage(named: "car1")!)
        carImages.append(UIImage(named: "car2")!)
        carImages.append(UIImage(named: "car3")!)
        carImages.append(UIImage(named: "car4")!)
        carImages.append(UIImage(named: "car5")!)
        carImages.append(UIImage(named: "car6")!)
        
        carSelectOutlet.image = carImages[0]
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToRootButton(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func carSelectLeftButton(_ sender: UIButton) {
        if carSelectOutlet.image == carImages[0] {
            carSelectOutlet.image = carImages[1]
            ChooseCarViewController.carImageNumber = 1
        } else if carSelectOutlet.image == carImages[1] {
            carSelectOutlet.image = carImages[2]
            ChooseCarViewController.carImageNumber = 2
        } else if carSelectOutlet.image == carImages[2] {
               carSelectOutlet.image = carImages[3]
               ChooseCarViewController.carImageNumber = 3
        } else if carSelectOutlet.image == carImages[3] {
               carSelectOutlet.image = carImages[4]
               ChooseCarViewController.carImageNumber = 4
        } else if carSelectOutlet.image == carImages[4] {
               carSelectOutlet.image = carImages[5]
               ChooseCarViewController.carImageNumber = 5
        } else if carSelectOutlet.image == carImages[5] {
            carSelectOutlet.image = carImages[0]
            ChooseCarViewController.carImageNumber = 0
        }
    }
    
    @IBAction func carSelectRightButton(_ sender: UIButton) {
        if carSelectOutlet.image == carImages[0] {
            carSelectOutlet.image = carImages[5]
            ChooseCarViewController.carImageNumber = 5
        } else if carSelectOutlet.image == carImages[5] {
            carSelectOutlet.image = carImages[4]
            ChooseCarViewController.carImageNumber = 4
        } else if carSelectOutlet.image == carImages[4] {
               carSelectOutlet.image = carImages[3]
               ChooseCarViewController.carImageNumber = 3
        } else if carSelectOutlet.image == carImages[3] {
               carSelectOutlet.image = carImages[2]
               ChooseCarViewController.carImageNumber = 2
        } else if carSelectOutlet.image == carImages[2] {
               carSelectOutlet.image = carImages[1]
               ChooseCarViewController.carImageNumber = 1
        } else if carSelectOutlet.image == carImages[1] {
            carSelectOutlet.image = carImages[0]
            ChooseCarViewController.carImageNumber = 0
        }
    }
    
}

