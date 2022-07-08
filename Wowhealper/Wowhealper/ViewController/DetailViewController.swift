//
//  DetailViewController.swift
//  Wowhealper
//
//  Created by 金斗石 on 2022/7/8.
//

import UIKit

class DetailViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        setupUI()
    }
    

    func setupUI() {
        navigationController?.navigationBar.tintColor = .red
        self.navigationController?.navigationBar.topItem?.title = "Detail"
    }

}
