//
//  ContainerViewController.swift
//  SwiftRace
//
//  Created by Michael on 6/30/22.
//

import UIKit

class ContainerViewController: UIViewController {
    
    enum MenuState {
        case opened
        case closed
    }
    
    private var menuState: MenuState = .closed
    
    let menuVC = MenuViewController()
    let homeVC = MainViewController()
    var navVC: UINavigationController?
    lazy var infoVC = InfoViewController()
    lazy var chooseCarVC = ChooseCarViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        view.backgroundColor = .red
//        addChildVCs()
    }
    
//    private func addChildVCs() {
//        // Menu
//        menuVC.delegate = self
//        addChild(menuVC)
//        view.addSubview(menuVC.view)
//        menuVC.didMove(toParent: self)
//
//        // Home
////        homeVC.delegate = self
//        let navVC = UINavigationController(rootViewController: homeVC)
//        addChild(navVC)
//        view.addSubview(navVC.view)
//        navVC.didMove(toParent: self)
//        self.navVC = navVC
//    }
//}
//
//extension ContainerViewController: MenuViewControllerDelegate {
//    func didTapMenuButton() {
//        toggleMenu(completion: nil)
//    }
//
//    func toggleMenu(completion: (() -> Void)?) {
//
//        // animate menu
//        print("did tap menu")
//
//        switch menuState {
//        case .closed:
//            // open it
//            UIView.animate(withDuration: 0.5,
//                           delay: 0,
//                           usingSpringWithDamping: 0.8,
//                           initialSpringVelocity: 0,
//                           options: .curveEaseInOut) {
//
//                self.navVC?.view.frame.origin.x = self.homeVC.view.frame.size.width - 100
//
//            } completion: { [weak self] done in
//                if done {
//                    self?.menuState = .opened
////                    DispatchQueue.main.async {
////                    completion?()
////                    }
//                }
//            }
//
//        case .opened:
//            // close it
//            UIView.animate(withDuration: 0.5,
//                           delay: 0,
//                           usingSpringWithDamping: 0.8,
//                           initialSpringVelocity: 0,
//                           options: .curveEaseInOut) {
//
//                self.navVC?.view.frame.origin.x = 0
//
//            } completion: { [weak self] done in
//                if done {
//                    self?.menuState = .closed
//                    DispatchQueue.main.async {
//                    completion?()
//                    }
//                }
//            }
////        break
//        }
//    }
//}
//
//extension ContainerViewController: MenuViewControllerDelegate {
//
//    func didSelect(menuItem: MenuViewController.MenuOptions) {
//        print("did select \(menuItem)")
////        didTapMenuButton()
//        toggleMenu(completion: nil)
//
////        { [weak self] in
//            print("completion \(menuItem)")
//            switch menuItem {
//
//            case .home:
//                self.resetToHome()
//            case .info:
////                let vc = InfoViewController()
////                self?.present(UINavigationController(rootViewController: vc), animated: true, completion: nil)
//
////            add info child
////                guard let strongSelf = self,
////                      let vc = self?.infoVC else {
////                    return
////                }
////                self?.addChild(vc)
////                self?.homeVC.view.addSubview(vc.view)
////                vc.view.frame = self?.homeVC.view.bounds ?? .zero
////                vc.didMove(toParent: strongSelf)
//
//                self.addInfo()
//            case .chooseCar:
////                break
//                chooseCar()
//            }
//        }
////    }
//
//    func addInfo() {
//        let vc = infoVC
//
//        homeVC.addChild(vc)
//        homeVC.view.addSubview(vc.view)
//        vc.view.frame = view.frame
//        vc.didMove(toParent: homeVC)
//        homeVC.title = vc.title
//    }
//
//    func resetToHome() {
//        infoVC.view.removeFromSuperview()
//        infoVC.didMove(toParent: nil)
//        homeVC.title = "Home"
//    }
//
//    func chooseCar() {
//
//        let ChCVC = aletrVC
//        ChCVC.didTapAlert()
//        menuVC.delegate = self
//        homeVC.addChild(ChCVC)
//        homeVC.view.addSubview(ChCVC.view)
//    }
//
//    func sheet() {
//
//        let asVC = aletrVC
//        asVC.didTapSheet()
//        menuVC.delegate = self
//        homeVC.addChild(asVC)
//        homeVC.view.addSubview(asVC.view)
//    }
//
}
