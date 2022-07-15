//
//  CharacterDetailViewController.swift
//  Wowhealper
//
//  Created by 金斗石 on 2022/7/13.
//

import UIKit

class CharacterDetailViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    func setupUI() {
        navigationItem.backBarButtonItem = backBotton
        self.navigationController?.navigationBar.tintColor = .ngaTextColor()
        backBotton = UIBarButtonItem(title: "＜返回", style: .done, target: self, action: #selector(backButtonTapped(_:)))
        navigationItem.setLeftBarButton(backBotton, animated: false)
    }
}
