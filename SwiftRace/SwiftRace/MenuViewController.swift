//
//  MenuViewController.swift
//  SwiftRace
//
//  Created by Michael on 6/26/22.
//

import UIKit
// add menu from HW_16

    protocol MenuViewControllerDelegate: AnyObject {
        func didSelect(menuItem: MenuViewController.MenuOptions)
        }

    class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
       
        weak var delegate: MenuViewControllerDelegate?
        
        enum MenuOptions: String, CaseIterable {
            case home = "Home"
            case info = "Info"
            case alert = "Alert"
            case actionSheet = "Action Sheet"
            
            var imageName: String {
                switch self {
                
                case .home:
                    return "house"
                case .info:
                    return "airplane"
                case .alert:
                    return "bell"
                case .actionSheet:
                    return "gear"
                }
            }
        }
        
        private let tableView: UITableView = {
            let table = UITableView()
            table.backgroundColor = nil
            table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
            return table
        }()
        
        let greyColor = UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1)
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.addSubview(tableView)
            
            tableView.delegate = self
            tableView.dataSource = self
            
            view.backgroundColor = greyColor
    //        view.backgroundColor = UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1)
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            tableView.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.bounds.size.width, height: view.bounds.size.height)
        }
        
    //     table
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return MenuOptions.allCases.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = MenuOptions.allCases[indexPath.row].rawValue
            cell.textLabel?.textColor = .white
            cell.imageView?.image = UIImage(systemName: MenuOptions.allCases[indexPath.row].imageName)
            cell.imageView?.tintColor = .white
            cell.backgroundColor = greyColor
            cell.contentView.backgroundColor = greyColor
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            let item = MenuOptions.allCases[indexPath.row]
            delegate?.didSelect(menuItem: item)
        }
    
}
