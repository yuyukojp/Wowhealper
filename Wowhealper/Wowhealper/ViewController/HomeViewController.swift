//
//  ViewController.swift
//  Wowhealper
//
//  Created by 金斗石 on 2022/7/8.
//

import UIKit
import RealmSwift
import SwiftUI

class HomeViewController: BaseViewController {
    @IBOutlet weak var showDetailBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.title = "Title"
    }

    @IBAction func tapShowDetailBtn(_ sender: Any) {
        Router.shared.showDetailView(from: self)
    }
    
}

