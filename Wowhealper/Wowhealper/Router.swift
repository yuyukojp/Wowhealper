//
//  Router.swift
//  Wowhealper
//
//  Created by 金斗石 on 2022/7/8.
//

import UIKit

final class Router {
    static let shared = Router()
    private init() {}
    
    var window: UIWindow?
    
    func showRoot(window: UIWindow) {
        let vc = HomeViewController()
        let nav = UINavigationController(rootViewController: vc)
        window.rootViewController = nav
        window.makeKeyAndVisible()
        self.window = window
    }
    
    func showDetailView(from: UIViewController) {
        let DetailVC = DetailViewController()
        from.show(to: DetailVC)
    }
//    
//    func showMenu(from: UIViewController) {
//        let menuVC = MenuViewController()
//        from.show(to: menuVC)
//    }
//    
//    func showMenuDetail(from: UIViewController, indexPath: Int) {
//        let menuDetailVC = MenuDetailViewController()
//        menuDetailVC.menuIndex = indexPath
//        from.show(to: menuDetailVC)
//    }
//    
//    func showAddPhoto(from: UIViewController, indexPath: Int) {
//        let addPhotoVC = AddPhotoViewController()
//        addPhotoVC.menuIndex = indexPath
//        from.show(to: addPhotoVC)
//    }
//    
//    func showAddMenuDetail(from: UIViewController, indexPath: Int) {
//        let menuDetailVC = AddMenuDetailViewController()
//        menuDetailVC.menuIndex = indexPath
//        from.show(to: menuDetailVC)
//    }
//    //編集で遷移するとき
//    func showAddMenuDetailEdit(from: UIViewController, indexPath: Int) {
//        let menuDetailVC = AddMenuDetailViewController()
//        menuDetailVC.menuIndex = indexPath
//        menuDetailVC.isEditMode = true
//        from.show(to: menuDetailVC)
//    }
}
