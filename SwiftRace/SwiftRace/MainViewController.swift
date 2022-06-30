//
//  ViewController.swift
//  SwiftRace
//
//  Created by Michael on 6/16/22.
//

import UIKit

class MainViewController: UIViewController {
    
    var menuOut = true
    
    
    @IBOutlet var mainViewOutlet: UIView!
    @IBOutlet weak var sideViewOutlet: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
   @IBAction func sideMenuButton(_ sender: UIButton) {
    menuOut = false
    
    if menuOut == false {
        UIView.animate(withDuration: 0.3, delay: 0, options: [], animations: {
            self.sideViewOutlet.frame = CGRect(x: 0, y: 0, width: self.sideViewOutlet.frame.width, height: self.sideViewOutlet.frame.height)
        }, completion: nil)
        
        let darkBlur = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: darkBlur)
        blurView.frame = view.frame
        mainViewOutlet.addSubview(blurView)
        
    }
}
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        menuOut = true
        
        UIView.animate(withDuration: 0.3, delay: 0, options: [], animations: {
            self.sideViewOutlet.frame = CGRect(x: -250, y: 0, width: self.sideViewOutlet.frame.width, height: self.sideViewOutlet.frame.height)
        }, completion: nil)
        
        for subview in mainViewOutlet.subviews {
            if subview is UIVisualEffectView {
                subview.removeFromSuperview()
            }
        }
    }
    


}
