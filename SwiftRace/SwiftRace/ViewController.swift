//
//  ViewController.swift
//  SwiftRace
//
//  Created by Michael on 6/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    var menuOut = true
    
    @IBOutlet weak var menuViewOutlet: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        startButton.text = "START"
//        startButton.font = UIFont(name: "SegoeUI-Bold", size: 40) ?? .systemFont(ofSize: 40)
        

        // Do any additional setup after loading the view.
    }
    
//    @IBAction func menuButton(_ sender: Any) {
//        menuOut = false
//        
//        if menuOut == false {
//            UIView.animate(withDuration: 0.3, delay: 0, options: [], animations: {
//                self.menuViewOutlet.frame = CGRect(x: 0, y: 0, width: self.menuViewOutlet.frame.width, height: self.menuViewOutlet.frame.height)
//            }, completion: nil)
//            
////            let darkBlur = UIBlurEffect(style: .light)
////            let blurView = UIVisualEffectView(effect: darkBlur)
////            blurView.frame = view.frame
////            mainViewOutlet.addSubview(blurView)
//            
//        }
//    }
//    
//    @IBAction func startButton(_ sender: Any) {
//    }
    


}
