//
//  ViewController+.swift
//  Wowhealper
//
//  Created by 金斗石 on 2022/7/8.
//

import UIKit

extension UIViewController {
    /// 次のViewへ遷移する
    func show(to nextVC: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
        DispatchQueue.main.async {
            if let nav = self.navigationController {
                nav.pushViewController(nextVC, animated: animated)
                completion?()
            } else {
                self.present(nextVC, animated: true, completion: completion)
            }
        }
    }
}
