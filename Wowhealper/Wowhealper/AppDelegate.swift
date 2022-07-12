//
//  AppDelegate.swift
//  Wowhealper
//
//  Created by 金斗石 on 2022/7/8.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        Router.shared.showRoot(window: window)
        IQKeyboardManager.shared.enable = true
        // 全部のビューが同時にクリックすることを防止
        // 連打防止
        UIView.appearance().isExclusiveTouch = true
        return true
    }


}

